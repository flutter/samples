import 'dart:convert';

/// Matches a complete title: 0-10 whitespaces, followed by 1-6 #s, followed by the title text
final markdownHeadingMatcher =
    RegExp(r'^ {0,10}(#{1,6})(?:[ \x09\x0b\x0c].*?)?(?:\s(#*)\s*)?$');

/// Matches the #s only
final headingSyntaxMatcher = RegExp(r'(#{1,6})');

/// This is VERY naive. For demo purposes only.
(bool, String) getTitleFromMarkdownRecipe(String markdown) {
  final LineSplitter splitter = LineSplitter();
  final mdCopy = markdown;
  final mdAsLines = splitter.convert(mdCopy);
  final matchingLine = mdAsLines.firstWhere((line) {
    RegExpMatch? match = markdownHeadingMatcher.firstMatch(line);
    return match != null;
  });
  RegExpMatch? match = markdownHeadingMatcher.firstMatch(matchingLine);
  if (match != null) {
    final split = matchingLine.split(headingSyntaxMatcher);
    if (split.length == 1) return (true, split.first);
    return (true, split.last);
  }

  return (false, markdown);
}
