# Master channel samples

In this directory, you'll find samples that target Flutter's master channel.
They may take advantage of new SDK features that haven't landed in the
stable channel, and they may crash, lock up your machine, or otherwise fail to
run correctly. In other words, consider everything in this directory to be an
experiment. 

We're maintaining these samples here so that folks can see some of Flutter's
upcoming features as they evolve, and get a sense for how they'll eventually
be used. If you'd like to run them, make sure to switch the the master channel
first:

```bash
flutter channel master
flutter upgrade
```

You will also need to update CocoaPods to the latest version in order to build
for iOS. To do so, run the following command on a MacOS machine:

```bash
sudo gem install cocoapods
```

When you're done, use this command to return to the safety of the stable
channel:

```bash
flutter channel stable
```

## Index

### [Add-to-App](add_to_app)

This project shows how to add a Flutter module to existing Android and iOS
applications. 

## Want more info about the repo in general?

See the [README](../README.md) in the repo's root folder.
