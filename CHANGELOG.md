# Changelog

Notable changes to the samples in this repository are listed here.

## [Unreleased]

### compass_app

* Refresh the home screen after returning from the booking flow so newly
  created trips appear immediately ([#2877](https://github.com/flutter/samples/issues/2877)).
* Scope `LogoutViewModel` to the home route so it is not recreated on every
  `HomeHeader` rebuild ([#2604](https://github.com/flutter/samples/issues/2604)).
