import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// Easy to use text widget, which converts inlined urls into clickable links.
/// Allows custom styling.
class LinkText extends StatefulWidget {
  /// Text, which may contain inlined urls.
  final String text;

  /// Style of the non-url part of supplied text.
  final TextStyle? textStyle;

  /// Style of the url part of supplied text.
  final TextStyle? linkStyle;

  /// Determines how the text is aligned.
  final TextAlign textAlign;

  /// If true, this will cut off all visible params after '?'.
  /// This is only for improved readability. When executing the url
  /// the link with all params will stay the same.
  final bool shouldTrimParams;

  /// Overrides default behavior when tapping on links.
  /// Provides the url that was tapped.
  final void Function(String url)? onLinkTap;

  /// Creates a [LinkText] widget, used for inlined urls.
  const LinkText(
    this.text, {
    super.key,
    this.textStyle,
    this.linkStyle,
    this.textAlign = TextAlign.start,
    this.shouldTrimParams = false,
    this.onLinkTap,
  });

  @override
  State<LinkText> createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {
  final _gestureRecognizers = <TapGestureRecognizer>[];
  final _regex = RegExp(
      r"https?:\/\/(www\.)?[-a-zA-Z0-9@:%.,_\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\,+.~#?&//=]*)");
  final _shortenedRegex = RegExp(r"(.*)\?");

  @override
  void dispose() {
    for (var recognizer in _gestureRecognizers) {
      recognizer.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    // final textStyle = widget.textStyle ?? themeData.textTheme.bodyMedium;
    final textStyle = widget.textStyle ??
        themeData.textTheme.labelLarge?.copyWith(
          // color: themeData.colorScheme.primary,
          fontWeight: FontWeight.w600,
        );
    final linkStyle = widget.linkStyle ??
        themeData.textTheme.bodyMedium?.copyWith(
          color: themeData.colorScheme.secondary,
          decoration: TextDecoration.underline,
        );

    final links = _regex.allMatches(widget.text);

    if (links.isEmpty) {
      return Text(widget.text, style: textStyle, textAlign: widget.textAlign);
    }

    final textParts = widget.text.split(_regex);
    final textSpans = <TextSpan>[];

    int i = 0;
    for (var part in textParts) {
      textSpans.add(TextSpan(text: part, style: textStyle));

      if (i < links.length) {
        final link = links.elementAt(i).group(0) ?? '';
        String? shortenedLink;

        final recognizer = TapGestureRecognizer()
          ..onTap = () => widget.onLinkTap?.call(link);

        if (widget.shouldTrimParams) {
          shortenedLink = _shortenedRegex.firstMatch(link)?.group(1);
        }

        _gestureRecognizers.add(recognizer);
        textSpans.add(
          TextSpan(
            text: shortenedLink ?? link,
            style: linkStyle,
            recognizer: recognizer,
          ),
        );

        i++;
      }
    }

    return Text.rich(
      TextSpan(children: textSpans),
      textAlign: widget.textAlign,
    );
  }
}
