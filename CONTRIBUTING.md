# Contributing

_See also: [Flutter's code of conduct](https://github.com/flutter/flutter/blob/master/CODE_OF_CONDUCT.md)_

Want to contribute to the Flutter sample ecosystem? Great! First, read this
page (including the small print at the end).

## Is this the right place for your contribution?

This repo is used by members of the Flutter team and a few partners as a place
to store example apps and demos. It's not meant to be the one and only source of
truth for Flutter samples or the only place people go to learn about the best
ways to build with Flutter. What that means in practice is that if you've
written a great example app, it doesn't need to be maintained here in order to
get noticed, be of help to new Flutter devs, and have an impact on the
community.

You can maintain your sample app in your own repo (or with another source
control provider) and still be as important a part of the Flutter-verse as
anything you see here. You can let us know on the
[FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
when you've published something and Tweet about it with the
[#FlutterDev](https://twitter.com/search?q=%23FlutterDev) hashtag.

## So what should be contributed here, then?

Fixes and necessary improvements to the existing samples, mostly.

## Before you contribute

### File an issue first!

If you see a bug or have an idea for a feature that you feel would improve one
of the samples already in the repo, **please
[file an issue](https://github.com/flutter/samples/issues/new) before you begin
coding or send a PR**. This will help prevent duplicate work by letting us know
what you're up to. It will help avoid a situation in which you spend a lot of
time coding something that's not quite right for the repo or its goals.

### Sign the license agreement.

Before we can use your code, you must sign the
[Google Individual Contributor License Agreement](https://cla.developers.google.com/about/google-individual)
(CLA), which you can do online. The CLA is necessary mainly because you own the
copyright to your changes, even after your contribution becomes part of our
codebase, so we need your permission to use and distribute your code. We also
need to be sure of various other things—for instance that you'll tell us if you
know that your code infringes on other people's patents. You don't have to sign
the CLA until after you've submitted your code for review and a member has
approved it, but you must do it before we can put your code into our codebase.

Before you start working on a larger contribution, you should get in touch with
us first through the issue tracker with your idea so that we can help out and
possibly guide you. Coordinating up front makes it much easier to avoid
frustration later on.

## A few ground rules

This is monorepo containing a bunch of projects. While different codebases have
different needs, there are a few basic conventions that every project here is
expected to follow. All of them are based on our experience over the last
couple years keeping the repo tidy and running smooth.

Each app should:

* Be designed to build against the current
  [stable](https://github.com/flutter/flutter/wiki/Flutter-build-release-channels)
  release of the Flutter SDK.
* Include the same
  [`analysis_options.yaml`](https://github.com/flutter/samples/blob/master/animations/analysis_options.yaml)
  file used throughout the repo. These files include a base set of analyzer
  conventions and lints.
* Have no analyzer errors or warnings.
* Be formatted with `flutter format`.
* Include at least one working test in its `test` folder.
* Be wired into the list of projects in [the CI script](tool/travis_flutter_script.sh), which
  runs the analyzer, the formatter, and `flutter test`.
* Avoid adding an onerous amount of blobs (typically images or other assets) to
  the repo.

In addition, sample code is, at the end of the day, still code. It should be
written with at least as much care as the Flutter code you'd find in the SDK
itself. For that reason, most of the
[Flutter style guide](https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo)
also applies to code in this repo.

### The `experimental` folder

Projects in the repo's top-level `experimental` directory are allowed to skirt
some of the above rules. These apps are either experimental in nature or use
APIs that haven't landed in the SDK's `stable` channel. They build against
`master`, and aren't (by default) wired into our CI system.

## Code reviews

All submissions, including submissions by project members, require review.

This repo is part of the [Flutter](https://github.com/flutter) GitHub account,
which means that a lot of folks have the ability to push and merge code. The
primary maintainers, though, are:

* [@RedBrogdon](https://github.com/RedBrogdon)
* [@johnpryan](https://github.com/johnpryan)
* [@domesticmouse](https://github.com/domesticmouse)
* [@theacodes](https://github.com/theacodes)

You are free to add one of these folks (particularly @RedBrogdon) as a reviewer
to any PR sent to this repo. We're happy to comment, answer (or ask) questions,
and provide feedback.

If you're part of a team that's already landed a sample in the repo (Hi,
Material!), and you're updating or fixing that sample, you are *not* expected to
wait on one of the above folks before merging the code. Have it reviewed by
someone you trust on your own team, and then merge it.

However, if you're adding a new sample, updating a sample you've never worked on
before, or changing something that's a meta-concern like the CI setup, web
hosting, project setup, etc., please include one of the primary maintainers as a
reviewer.

## File headers

All files in the project must start with the following header.

```
// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
```

## The small print

Contributions made by corporations are covered by a different agreement than the
one above, the
[Software Grant and Corporate Contributor License Agreement](https://developers.google.com/open-source/cla/corporate).
