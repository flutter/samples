# Releasing flutter/samples

This repo has no published artifact, so "a release" here means one thing:
**every sample in this repo builds, analyzes, formats, and tests cleanly
against the Flutter version that is about to become stable.** The work happens
on a release branch while the next version is still on `beta`, and lands on
`main` at promotion.

This document is the process. [`tool/README.md`](tool/README.md) documents the
individual scripts.

---

## 1. How the repo is wired

Understanding three things explains almost every surprise in this repo.

### The root `pubspec.yaml` workspace is the source of truth

[`pubspec.yaml`](pubspec.yaml) at the repo root is a
[pub workspace](https://dart.dev/tools/pub/workspaces). Its `workspace:` list
is the canonical list of samples, and it drives everything:

- `tool/ci_script.dart` iterates it, so **a sample missing from this list is
  never checked by CI.**
- `tool/release.dart` iterates it to bump SDK constraints.
- One `pubspec.lock` is resolved at the root for all members. Member packages
  declare `resolution: workspace` and have no lockfile of their own.
  (`pubspec.lock` is gitignored repo-wide.)

Two consequences worth internalizing:

1. **Every workspace member needs a unique `name:`.** Two packages both called
   `flutter_module` cannot both be members. This is why
   `add_to_app/ios_content_resizing/flutter_module` is named
   `flutter_module_content_resizing` even though its directory is
   `flutter_module` — the directory name is baked into the Xcode project's
   build phase and is more expensive to change than the package name.
2. **A workspace hides undeclared dependencies.** All members share one
   `package_config.json`, so a sample can `import 'package:foo/foo.dart'`
   without declaring `foo`, and it will still compile. It breaks in subtler
   ways instead — asset bundles are computed per-package from *declared*
   dependencies, so an undeclared UI package means its assets and shaders go
   missing at runtime and in widget tests. See the `material_ui` entry under
   [Known gotchas](#5-known-gotchas).

`tool/ci_script.dart` now fails if a `pubspec.yaml` exists on disk but is not
in `workspace:` (or in `excluded_from_workspace:`). That check exists because
`add_to_app/ios_content_resizing` sat outside the workspace for a year with a
test file that had never once compiled.

### Skip lists

Three optional keys in the root `pubspec.yaml`, all read by both
`tool/ci_script.dart` and `tool/release.dart`:

| Key | Meaning |
| --- | --- |
| `skip_ci` | Always skipped, every channel. Use sparingly and leave a comment. |
| `skip_ci_<channel>` | Skipped only on that channel — `skip_ci_beta`, `skip_ci_stable`. |
| `excluded_from_workspace` | Package is on disk on purpose but is not a workspace member. Exempts it from the drift check. Keep empty if you can; entries here are invisible to CI. |

`skip_ci_beta` is the release valve. When a sample needs an API that only
exists on beta, or a beta change breaks a sample in a way that can't be fixed
compatibly on both channels, park it there with a comment naming the issue —
then remove it once the version promotes.

### What CI actually runs

| Workflow | Triggers | What it does |
| --- | --- | --- |
| [`main.yml`](.github/workflows/main.yml) | push/PR to `main`, nightly, manual | `dart tool/ci_script.dart` across `{stable, beta} × {ubuntu, macos}`. Analyze, format check, and tests for every workspace member. |
| [`build-ios.yml`](.github/workflows/build-ios.yml) | push/PR to `main` or `beta`, nightly, manual | `tool/ios_ci_script.sh` — `pod install` plus Debug and Release `xcodebuild` for each `add_to_app` iOS host app. |
| [`build-android.yml`](.github/workflows/build-android.yml) | push/PR to `main` or `beta`, nightly, manual | `tool/android_ci_script.sh` — `assembleDebug`/`assembleRelease` for each `add_to_app` Android host app. |

The native workflows are the ones that catch `add_to_app` breakage, and they
are the ones nobody watches, because nothing in a normal Dart-only PR touches
them. Check them explicitly during a release.

Firebase Test Lab steps in `android_ci_script.sh` are skipped unless
`svc-keyfile.json` is present at the repo root, so they no-op on forks and in
normal CI runs.

---

## 2. The release process

Start when the version you are targeting is on `beta`, ideally a few weeks
before promotion.

### Step 1 — Branch

```bash
git fetch origin
git switch -c v<version> origin/main   # e.g. v3.50
```

Name the branch after the Flutter version. The branch lives until promotion.

### Step 2 — Get on the SDK you are releasing for

```bash
flutter channel beta
flutter upgrade
flutter --version    # confirm the Flutter and Dart versions
```

Note the **Dart** version — that is what the SDK constraints become. The
mapping is not obvious: Flutter 3.50 ships Dart 3.14.

### Step 3 — Bump and sweep

```bash
dart tool/release.dart --dry-run   # review what it will touch
dart tool/release.dart
```

This rewrites `environment.sdk` in the root pubspec and every workspace member
to `^<dartVersion>-0`, re-resolves the workspace once, then analyzes, formats,
and tests each package. Problems land in `logs/release_logs_<timestamp>.log`
(the `logs/` directory is gitignored) and in a summary at the end. It exits
non-zero if anything failed.

**Expect the `stable` leg of CI to go red at this point, and expect that.**
Raising the SDK floor to the beta Dart version makes the samples unresolvable
on current stable. That is the normal state of a release branch and it clears
itself when the version promotes. If you need a green `stable` leg for some
other reason, `--no-bump` runs the sweep without touching constraints.

### Step 4 — Fix what broke

This is the actual work, and it is mostly not mechanical. The
[Known gotchas](#5-known-gotchas) section is a list of the classes of breakage
this repo has actually hit — read it before you start debugging.

Work sample by sample. For each fix, prefer a change that works on both
channels; if that is impossible, use `skip_ci_beta` and file an issue.

### Step 5 — Verify both channels locally

```bash
dart tool/ci_with_channel.dart -c stable,beta
```

This switches channels, runs `tool/ci_script.dart` on each, and restores your
original channel. The first run on a new channel redownloads the SDK, so it is
slow. It reports both legs rather than stopping at the first failure.

### Step 6 — Verify the native builds

These are not covered by `ci_script.dart` and need real toolchains:

```bash
./tool/ios_ci_script.sh        # macOS, Xcode, CocoaPods
./tool/android_ci_script.sh    # Android SDK, JDK 17
```

Or push the branch and trigger `build-ios` / `build-android` via
**workflow_dispatch** on the branch, which is usually easier than maintaining
both toolchains locally.

### Step 7 — Land at promotion

Once the version is promoted to stable:

1. `flutter channel stable && flutter upgrade`.
2. Re-run `dart tool/ci_script.dart`. The `stable` leg should now be green
   because stable's Dart version finally satisfies the constraints you set in
   step 3.
3. Empty `skip_ci_beta` of anything that was parked for this release.
4. Open the PR against `main`. Include the release version in the title.
5. Confirm all three workflows pass on the PR, **including the native ones**.

---

## 3. Adding a new sample

The checklist is in [`CONTRIBUTING.md`](CONTRIBUTING.md#sample-checklist). The
two items most often missed, both of which silently remove a sample from
coverage:

- Add the package to `workspace:` in the root `pubspec.yaml`. CI now fails if
  you forget, which is the point.
- Add it to [`.github/dependabot.yaml`](.github/dependabot.yaml) so its
  dependencies keep getting updated.

Also: give it a unique package `name:`, and have its `analysis_options.yaml`
include the root one (`include: ../../analysis_options.yaml`, with the right
number of `..` segments).

---

## 4. Open items for the next maintainer

Things known to be imperfect, with no action taken, so you can decide:

- **Dependabot has drifted from the workspace.** 13 workspace packages have no
  `pub` entry in `.github/dependabot.yaml`, including `compass_app/app`,
  `compass_app/server`, `cupertino_gallery`, `date_planner`, `dynamic_theme`,
  `pedometer`, `asset_transformation`, and the `add_to_app` modules other than
  the four originals. The per-directory list has to be hand-maintained, which
  is why it drifts. Two options: enumerate the rest, or collapse the `pub`
  entries into dependabot's `directories:` (plural) form with globs so new
  samples are picked up automatically. The second is better but worth testing
  on a branch first — dependabot's handling of pub *workspaces* (one root
  lockfile, members with `resolution: workspace`) is not something this repo
  has exercised.

- **Android CI covers 4 of the 7 `add_to_app` Gradle host apps.**
  `android_view/android_view`, `android_view/content_sizing_android_view`, and
  `books/android_books` have a `gradlew` but are not in
  `ANDROID_PROJECT_NAMES` in `tool/android_ci_script.sh`. They were left out
  rather than added untested, since a failing `assembleRelease` would block
  the branch. Add them one at a time and confirm each builds.

- **Espresso tests only exist for `android_fullscreen`**, and only run when
  `svc-keyfile.json` is present. The script already says this.

- **`.github/no-response.yml`** configures `probot-no-response`, which has
  been deprecated. If stale `needs-info` issues are not being closed, that app
  is no longer running and the config does nothing; replace it with an
  `actions/stale` workflow.

- **`CODEOWNERS` does not exist**, though `CONTRIBUTING.md` requires every new
  sample to have a codeowner. Worth adding at handoff so review requests route
  to whoever owns each sample.

---

## 5. Known gotchas

Each of these cost real debugging time. The symptom is listed first, because
that is what you will have.

### `Asset 'packages/<pkg>/...' not found` in widget tests

**Cause:** the sample imports a package it never declared in its
`pubspec.yaml`. The pub workspace makes the import compile anyway, but the
per-package asset bundle is built from declared dependencies, so the package's
assets and shaders are absent.

This is how it showed up for real: 44 files in `compass_app/app` imported
`package:material_ui/material_ui.dart`, which was never added to its
`pubspec.yaml`. Any test that tapped a Material button and then
`pumpAndSettle()`ed failed with
`Asset 'packages/material_ui/shaders/ink_sparkle.frag' not found`, because
`InkSparkle` could not load its shader. Tests using plain `pump()` passed,
since the shader future never resolved inside the test.

**Check:** for each workspace member, every `package:<x>/` imported under
`lib/` or `test/` should appear in that package's `pubspec.yaml`.

### Generated code fails to compile after an SDK bump

**Cause:** `*.freezed.dart` and `*.g.dart` are committed to this repo but were
generated by an older generator, and the new Dart front end rejects the old
output.

Dart 3.14 began rejecting `required final X y` in a constructor parameter
list, which is exactly what freezed 2.x emitted. `compass_app` had freezed 2.x
output committed while its pubspec asked for `freezed >=3.0.0`, so 24 tests
failed to load.

**Fix:** regenerate, and migrate the source if the generator had a breaking
change. For the freezed 3.0 migration that meant `@freezed class Foo` becoming
`@freezed abstract class Foo` (or `sealed` for unions):

```bash
cd <sample>
dart run build_runner build
```

build_runner also warns when a constraint is too loose for the generator
(`json_annotation ^4.9.0 allows versions before 4.12.0`). Those warnings are
worth fixing while you are there.

### `flutter test` passes locally but the asset bundle looks stale

`build/unit_test_assets/` caches the test asset bundle, and `build/` is
gitignored, so a stale local bundle can produce failures CI never sees and
vice versa. `rm -rf build/unit_test_assets` before trusting a local asset
result.

### `dart format` used to never fail CI

`tool/ci_script.dart` ran `dart format .`, which *rewrites* files in the CI
checkout and exits 0. Formatting was effectively unenforced for as long as
that was true. It now runs
`dart format --output=none --set-exit-if-changed .`. `tool/release.dart` still
rewrites on purpose — it exists to produce a diff you review.

Note the split: **`ci_script.dart` checks, `release.dart` fixes.**

### A sample with a `test/` directory but no tests fails CI

`flutter test` exits non-zero with `No tests were found.`, so a placeholder
`void main() {}` test file is worse than no `test/` directory at all.
`cupertino_gallery` shipped like this. Either write a real test or delete the
file.

### `| xcpretty` can hide a failing build

`tool/ios_ci_script.sh` pipes every `xcodebuild` through `xcpretty`. Without
`pipefail` the pipeline reports xcpretty's exit code, so a failed build can
pass. The script now sets `set -eo pipefail`.

### Committed Xcode and CocoaPods output

The repo's `.gitignore` patterns for Xcode noise were all scoped to
`**/ios/**`, which only matches host apps in a directory literally named
`ios`. `add_to_app/ios_content_resizing/` is not, so 43 `Pods/` files and 9
`xcuserdata/` files (including another contributor's
`UserInterfaceState.xcuserstate`) were committed. `.gitignore` now has
unscoped `**/Pods/`, `**/xcuserdata/`, `**/DerivedData/`, and `*.xcuserstate`
rules. If you add an `add_to_app` host app in a directory not named `ios`,
confirm `git status` is clean after a `pod install` and an Xcode launch.
