# Repo tooling

Scripts that maintain this monorepo. All of them are run **from the repo
root**, not from this directory.

For how these fit into a Flutter release, see [`../RELEASE.md`](../RELEASE.md).

| Script | Run by | Mutates files? |
| --- | --- | --- |
| [`ci_script.dart`](ci_script.dart) | CI ([`main.yml`](../.github/workflows/main.yml)) and you | No — it checks |
| [`ci_with_channel.dart`](ci_with_channel.dart) | You, locally | No |
| [`release.dart`](release.dart) | You, during release prep | **Yes** |
| [`ios_ci_script.sh`](ios_ci_script.sh) | CI ([`build-ios.yml`](../.github/workflows/build-ios.yml)) | No |
| [`android_ci_script.sh`](android_ci_script.sh) | CI ([`build-android.yml`](../.github/workflows/build-android.yml)) | No |
| [`clean_all.dart`](clean_all.dart) | You, when builds go stale | Deletes build output |

The most important distinction: **`ci_script.dart` checks formatting,
`release.dart` rewrites it.** Mixing those up is how formatting went
unenforced in this repo for a long stretch — CI ran plain `dart format .`,
which rewrites files in the throwaway CI checkout and always exits 0.

---

## `ci_script.dart`

The CI entrypoint. Iterates the `workspace:` list in the root `pubspec.yaml`
and, for each package, runs:

1. `dart analyze --fatal-infos --fatal-warnings`
2. `dart format --output=none --set-exit-if-changed .`
3. `flutter test --no-pub` or `dart test`, if the package has a `test/`
   directory

```bash
flutter pub get && dart tool/ci_script.dart
```

It collects every failure and prints a summary at the end instead of stopping
at the first one, then exits non-zero. During a release sweep you want the
whole list.

Before any of that it runs a **workspace drift check**: if a `pubspec.yaml`
exists anywhere in the repo but is not in `workspace:` (or in
`excluded_from_workspace:`), the script fails and names it. A sample outside
the workspace is a sample CI never looks at.

It reads three optional keys from the root `pubspec.yaml`:

```yaml
workspace:                    # canonical list of samples
  - some_sample

skip_ci:                      # always skipped, every channel
  # - some_sample

skip_ci_beta:                 # skipped only on the beta channel
  # - some_sample             # (also skip_ci_stable, skip_ci_main)

excluded_from_workspace:      # on disk on purpose, not a member; exempt
  # - some_sample             # from the drift check. Keep this empty.
```

`skip_ci_<channel>` is the release valve — use it when a sample needs an API
that has not reached stable yet, and leave a comment naming the issue.

## `ci_with_channel.dart`

Runs `ci_script.dart` against several channels in one go, restoring your
original channel afterwards (including on failure).

```bash
dart tool/ci_with_channel.dart -c stable,beta
```

It shells out to `ci_script.dart` rather than reimplementing the sweep. An
earlier version had its own copy of the loop that ignored the skip lists, so
it quietly disagreed with real CI. Don't reintroduce that.

Switching channels redownloads the SDK, so the first run per channel is slow.
Not for use in GitHub Actions — the workflow sets the channel itself.

## `release.dart`

Prepares every sample for a new Flutter release. Rewrites `environment.sdk` in
the root pubspec and every member to `^<dartVersion>-0` using the **active**
SDK's Dart version, re-resolves the workspace once, then analyzes, formats,
and tests each package.

```bash
dart tool/release.dart --dry-run     # preview every change
dart tool/release.dart
dart tool/release.dart --no-bump     # sweep without touching constraints
dart tool/release.dart --skip-tests  # constraints, analyze, format only
```

Failures go to `logs/release_logs_<timestamp>.log` (gitignored) plus a summary,
and it exits non-zero if anything failed. It honors the same skip lists CI
uses.

Run it on the channel you are releasing for — it reads the Dart version from
whichever SDK is active, so running it on the wrong channel writes the wrong
floor.

## `ios_ci_script.sh` / `android_ci_script.sh`

Build every `add_to_app` host app against real native toolchains. These are
the only coverage the `add_to_app` samples get — `ci_script.dart` checks their
Flutter modules but never builds the Android or iOS hosts.

```bash
./tool/ios_ci_script.sh        # needs macOS, Xcode, CocoaPods
./tool/android_ci_script.sh    # needs Android SDK, JDK 17
```

Both are plain `bash` with `set -e`, so they stop at the first failure. The
iOS script also sets `pipefail`, because every `xcodebuild` is piped through
`xcpretty` and without it a failing build reports xcpretty's exit code and
passes.

Two things to know:

- **The project lists are hand-maintained**, and they drift. Paths are
  hardcoded, so renaming a sample directory silently breaks them — that is how
  both scripts came to reference `add_to_app/fullscreen/flutter_module` long
  after it was renamed to `flutter_module_fullscreen`, aborting on the first
  `pushd`. If you rename an `add_to_app` directory, grep these two scripts.
  Android currently covers 4 of the 7 Gradle host apps; see `../RELEASE.md`.
- **Firebase Test Lab steps no-op without credentials.** They are skipped
  unless `svc-keyfile.json` exists at the repo root, so they do nothing on
  forks and in ordinary CI runs.

## `clean_all.dart`

Runs `flutter clean` across the repo. Useful when stale build output is
producing local-only failures — notably `build/unit_test_assets/`, which
caches the widget-test asset bundle and can hide or invent failures that CI
does not see.
