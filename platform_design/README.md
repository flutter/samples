# Platform Design

Instead of transliterating widget one by one between Cupertino and Material,
Android and iOS apps often follow different Information Architecture patterns
that requires some design decisions.

This sample project shows a Flutter app that maximizes application code reuse
while adhering to different design patterns on Android and iOS. Namely, on
Android, it uses Material's [lateral navigation](https://material.io/design/navigation/understanding-navigation.html#types-of-navigation)
based on a drawer and on iOS, it uses Apple Human Interface Guideline's
[flat navigation](https://developer.apple.com/design/human-interface-guidelines/ios/app-architecture/navigation/)
via a bottom tab bar.
