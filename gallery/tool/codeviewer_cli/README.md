# Codeviewer

A command-line application to highlight dart source code.

## Overview

Code segments are highlighted before the app is compiled.
This is done because the highlighting process can take 300ms to finish, creating
a noticeable delay when the demo switches to code page.

The highlighter takes all files in the `gallery/lib/demos/` folder and scans each.
Highlighted code widgets are stored in the
`gallery/lib/codeviewer/code_segments.dart` file.

## How to generate code segments

From the `samples/gallery/` directory:
1. Make sure you have [grinder](https://pub.dev/packages/grinder) installed by
running `flutter pub get`.
2. Then run `flutter pub run grinder update-code-segments` to generate code
segments with highlighting.

## How to define a block of code to generate highlighting for

Wrap a block of code with lines `// BEGIN yourDemoName` and `// END` to mark it
for highlighting. The block in between, as well as any copyright notice and
imports at the beginning of the file, are automatically taken and highlighted,
and stored as `static TextSpan yourDemoName(BuildContext context)` in
`gallery/lib/codeviewer/code_segments.dart`. To display the code, go to
`gallery/lib/data/demos.dart`, and add `code: CodeSegments.yourDemoName,` to
your `GalleryDemoConfiguration` object.

## Multiple blocks of code

Use the following method to join multiple blocks of code into a single segment:
```
// BEGIN yourDemo#2
a();
// END
b();
// BEGIN yourDemo#1
c();
// END
```
The generated code will be
```
c();
a();
```

Code blocks can nest or overlap. In these cases, specify which file(s) to `END`.

The following source file
```
// BEGIN demoOne
a();
// BEGIN demoTwo
b();
// END demoOne
c();
// END demoTwo
```
will create the following segments:
(demoOne)
```
a();
b();
```
(demoTwo)
```
b();
c();
```
