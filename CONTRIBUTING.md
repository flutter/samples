# Contributing

Want to contribute to the Flutter sample ecosystem? Great! First, read this
page (including the small print at the end).

Do you work at Google? Great! You should **definitely** read this page before submitting a PR :)
  
* [Before you contribute]
* [Contribute enhancements and fixes]
* [Writing a new sample]
* [Sample checklist]

_See also: [Flutter's code of conduct]_

<br />

# Before you contribute


## Is this the right place for your sample?

In most cases, if you've written a great sample app, it should be maintained 
in your own repoistory. You can maintain your sample app in your own repo 
(or with another source control provider) and still be as important a part of 
the Flutter-verse as anything you see here.

**What should be contributed here, then?**

Fixes and necessary improvements to the existing samples, mostly. 

## File an issue first!

If you see a bug or have an idea for a feature that you feel would improve one
of the samples already in the repo, **please [file an issue] before you begin
coding or send a PR**. This will help prevent duplicate work by letting us know
what you're up to. It will help avoid a situation in which you spend a lot of
time coding something that's not quite right for the repo or its goals.

## Sign the license agreement.

Before we can use your code, you must sign the
[Google Individual Contributor License Agreement]
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

<br />

# Contribute enhancements and fixes

Enhancements and bug fixes are welcome and appreciated. 
If you spot an [issue] that you might want to fix but aren't sure how to get started, 
feel free to comment on the issue and tag @ericwindmill with questions.

## Filing issues and evaluating existing samples

You can also contribute by filing issues against existing samples. This is thankless work
and is _greatly_ appreciated. It's also a good way to familiarize yourself with the repository.

To evaluate a sample for possible issues, use the [Sample checklist] below.

<br />

# Writing a new sample

Before filing an issue for a new sample or submitting a PR, you must read the rest of this page.

## What is a sample? 

Samples are reference materials that teach developers how to solve a specific problem. 
Samples contain **correct and concise code** that developers can 
**quickly understand** and **easily reuse** with minimal side effects.

### What samples should we have?

Samples in this repo demonstrates how to **use current features** of the **Flutter and Dart SDKs** using **best practices**. 
In other words, a sample should meet the following criteria:

* Demonstrates _how to use the SDKS_ rather than show an end-product.
* Covers a critical developer journey in the SDK that is useful to >80% of developers.
* Prefers primitives in the SDK over libraries.
* Demonstrates features available on the stable channel of Flutter.

These guidelines can be broken in rare cases. For example, this is likely the best place in the 
Flutter github org for demo apps, but those demo apps must be justified.

## Is this the right place for your sample? (revisited)

Validate your idea against the following criteria:

1. **The sample solves a single problem or set of tightly coupled problems.** <br/>
    If not, you're either writing a Demo app or an extended sample. These might 
    still be appropriate for the samples repos, but need to be justified.

2. **The target audience for the sample isn’t beginners.**
3. **The sample code isn’t so complex that it needs video or text explanation.** <br />
    Samples are reference materials, and the code should speak for itself. If either of these aren't true, 
    you may prefer to write a blogpost or tutorial. 

5. **The sample isn’t tied to an event.** <br />
    If it is, you should likely use a personal repository.

5. **The sample isn’t tied to a library or package.** <br />
    If it is, the usage example should likely be in the [repository of that package].

6. **The topic doesn’t have crossover with any existing samples.** <br />
    If it does, ensure that it wouldn't be better to update the existing sample.

## What are your ongoing maintenance resposibilities?

All sample code has an unbound maintenance cost. If you cannot commit to maintaining a sample 
(for the forseeable future, barring changes in life circumstances), then you should talk to the
[primary maintainers] of this project, particularly @ericwindmill, before submitting a PR.

Any new sample **must** have a CODEOWNER, and that owner is most likely you (the author).

## What type of sample are your writing?

This repository contains two types of sample apps: **quickstarts** and **demo apps**.

### Quickstarts

* **Purpose**: Provides starting points that a developer can extend. 
    Solves specific problems or implements generic app features.
* **Size**: <= 200 lines of code, not including boiler plate (guide, not rule)
* **Qualities:**
    * Contains one feature or a small set of related features, but generally runnable.
    * Generic and un-opinionated about the context in which it is used.
    * Prioritizes being generic over best practices.
    * The code is Copy+paste-able.
      * In Flutter, this means that the code that is being demonstrated should be separated from and boiler plate (i.e. `runApp`)
* **Audience:**
    * Developers with Flutter and Dart experience that don't need code explained to them.
* **Answers the questions:**
    * “What’s the minimal amount of code needed to implement this feature…”
        * “... so I can understand how it works?”
        * “... so I can understand how to add it to my app?”
    * “How can I make sure I know how to extend this feature without missing anything?”
    * "What code should I use as a starting point given I want to solve a very similar problem?"

### Demo apps

* **Purpose**: Meant to be built and ran. Demos the _product_, not how to write code.
* **Criteria**: Demo apps _only_ belong here if they...
   * ...aren't tied to an event or moment in time.
   * ...aren't tied to another resource (website, workshop, etc).
   * ...don't require explanation (other than a short README).
   * ...aren't primarily used to demonstrate an SDK feature.

### Other sample types

Other sample types, like demo apps that accompany docs or events, do not belong in this repository.
They should be maintained alongside the accompanying resources (i.e. in the website repository), or in a personal repository.

### The `experimental` folder

The experimental folder is being deprecated. If you have an experiemental sample project, 
you should manage it in a personal repository until it runs on the stable channel.

<br />

# Sample checklist

Every piece of code will have value to someone, but it is easy for maintenance costs to grow over time.
The more items checked on this list, the higher the value and lower the maintenance costs.

Use this checklist to write new samples and evaluate existing ones.

**NB:** Demo apps have looser requirements. Use your best judgement when following the guidelines.

* Code
    - [ ] Be designed to build against the current [stable]
          release of the Flutter SDK.
    - [ ] Sample is the only one for the API in question (across all Dash samples)
    - [ ] Repository and pubspec name are titled for its ingredients (i.e. mvvm_architecture instead of compass_app)
    - [ ] Only includes the minimal required code to demonstrate the feature or API and run the code.
    - [ ] Sample favors 1P dependencies over 3P.
    - [ ] Code has been sufficiently explained with doc comments.
    - [ ] The sample app separates its bespoke code from general Flutter or Dart code.
    - [ ] Favor readability over best practices unless readability requires an anti pattern. Use your best judgment.
    - [ ] Avoid adding an onerous amount of blobs (typically images or other assets) to the repo.
    - [ ] All files in the project must start with the appropriate [file headers].

* Tests, style and maintenance
    - [ ] Sample has Dart tests that cover the business logic
    - [ ] Sample is wired into the list of projects in the CI scripts for [stable](tool/flutter_ci_script_stable.sh), 
      [beta](tool/flutter_ci_script_beta.sh), and [master](tool/flutter_ci_script_master.sh), 
      which runs the analyzer, the formatter, and `flutter test`.
    - [ ] Sample has a codeowner (it's likely you, the author)
    - [ ] Sample is formatted with `dart format`.
    - [ ] Sample has no analyzer errors or warnings.
    - [ ] Add the new project directory to the [dependabot](.github/dependabot.yaml) configuration
      to keep dependencies updated in an on-going basis.
    - [ ] Follows the [Flutter style guide]
    - [ ] Include the top level [`analysis_options.yaml`](analysis_options.yaml)
      file used throughout the repo. This file include a base set of analyzer
      conventions and lints.

* README
    - [ ] Describes the apps design and purpose.
    - [ ] Describes common errors and debugging steps.
    - [ ] Describes any steps necessary to build and run.
    - [ ] Has ‘Open in IDX’ button, and a nix file (if compatible with IDX).

## File headers

All files in the project must start with the following header.

```
// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
```

<br />

# Code reviews

All submissions, including submissions by project members, require review.

This repo is part of the [Flutter](https://github.com/flutter) GitHub account,
which means that a lot of folks have the ability to push and merge code. The
primary maintainers, though, are:

* [@RedBrogdon](https://github.com/RedBrogdon)
* [@johnpryan](https://github.com/johnpryan)
* [@domesticmouse](https://github.com/domesticmouse)
* [@ericwindmill](https://github.com/ericwindmill)

You are free to add one of these folks (particularly @ericwindmill) as a reviewer
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

<br />

# The small print

Contributions made by corporations are covered by a different agreement than the
one above, the [Software Grant and Corporate Contributor License Agreement].

[Flutter's code of conduct]: https://github.com/flutter/flutter/blob/master/CODE_OF_CONDUCT.md
[Before you contribute]: https://github.com/flutter/samples/blob/main/CONTRIBUTING.md#before-you-contribute
[Contribute enhancements and fixes]: https://github.com/flutter/samples/blob/main/CONTRIBUTING.md#contribute-enhancements-and-fixes
[Writing a new sample]: https://github.com/flutter/samples/blob/main/CONTRIBUTING.md#writing-a-new-sample
[Sample checklist]: https://github.com/flutter/samples/blob/main/CONTRIBUTING.md#samples-checklist
[file headers]: https://github.com/flutter/samples/blob/main/CONTRIBUTING.md#file-headers
[Software Grant and Corporate Contributor License Agreement]: https://developers.google.com/open-source/cla/corporate
[issue]: https://github.com/flutter/samples/issues
[file an issue]: https://github.com/flutter/samples/issues/new
[repository of that package]: https://dart.dev/tools/pub/package-layout#examples
[stable]: https://github.com/flutter/flutter/blob/master/docs/releases/Flutter-build-release-channels.md
[Flutter style guide]: (https://github.com/flutter/flutter/blob/master/docs/contributing/Style-guide-for-Flutter-repo.md)
[Google Individual Contributor License Agreement]: https://cla.developers.google.com/about/google-individual
[primary maintainers]: https://github.com/flutter/samples/blob/main/CONTRIBUTING.md#code-reviews
