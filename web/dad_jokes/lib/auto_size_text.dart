// Package auto_size_text:
//    https://pub.dartlang.org/packages/auto_size_text

import 'package:flutter_web/widgets.dart';

bool checkTextFits(TextSpan text, Locale locale, double scale, int maxLines,
    double maxWidth, double maxHeight) {
  final tp = TextPainter(
    text: text,
    textAlign: TextAlign.left,
    textDirection: TextDirection.ltr,
    textScaleFactor: scale ?? 1,
    maxLines: maxLines,
    locale: locale,
  )..layout(maxWidth: maxWidth);

  return !(tp.didExceedMaxLines ||
      tp.height > maxHeight ||
      tp.width > maxWidth);
}

/// Flutter widget that automatically resizes text to fit perfectly within its bounds.
///
/// All size constraints as well as maxLines are taken into account. If the text
/// overflows anyway, you should check if the parent widget actually constraints
/// the size of this widget.
class AutoSizeText extends StatefulWidget {
  /// Creates a [AutoSizeText] widget.
  ///
  /// If the [style] argument is null, the text will use the style from the
  /// closest enclosing [DefaultTextStyle].
  const AutoSizeText(
    this.data, {
    Key key,
    this.style,
    this.minFontSize = 12.0,
    this.maxFontSize,
    this.stepGranularity = 1.0,
    this.presetFontSizes,
    this.group,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
  })  : assert(data != null),
        assert(stepGranularity >= 0.1),
        textSpan = null,
        super(key: key);

  /// Creates a [AutoSizeText] widget with a [TextSpan].
  const AutoSizeText.rich(
    this.textSpan, {
    Key key,
    this.style,
    this.minFontSize = 12.0,
    this.maxFontSize,
    this.stepGranularity = 1.0,
    this.presetFontSizes,
    this.group,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
  })  : assert(textSpan != null),
        assert(stepGranularity >= 0.1),
        data = null,
        super(key: key);

  /// The text to display.
  ///
  /// This will be null if a [textSpan] is provided instead.
  final String data;

  /// The text to display as a [TextSpan].
  ///
  /// This will be null if [data] is provided instead.
  final TextSpan textSpan;

  /// If non-null, the style to use for this text.
  ///
  /// If the style's "inherit" property is true, the style will be merged with
  /// the closest enclosing [DefaultTextStyle]. Otherwise, the style will
  /// replace the closest enclosing [DefaultTextStyle].
  final TextStyle style;

  /// The minimum text size constraint to be used when auto-sizing text.
  ///
  /// Is being ignored if [presetFontSizes] is set.
  final double minFontSize;

  /// The maximum text size constraint to be used when auto-sizing text.
  ///
  /// Is being ignored if [presetFontSizes] is set.
  final double maxFontSize;

  /// The steps in which the font size is being adapted to constraints.
  ///
  /// The Text scales uniformly in a range between [minFontSize] and
  /// [maxFontSize].
  /// Each increment occurs as per the step size set in stepGranularity.
  ///
  /// Most of the time you don't want a stepGranularity below 1.0.
  ///
  /// Is being ignored if [presetFontSizes] is set.
  final double stepGranularity;

  /// Lets you specify all the possible font sizes.
  ///
  /// **Important:** The presetFontSizes are used the order they are given in.
  /// If the first fontSize matches, all others are being ignored.
  final List<double> presetFontSizes;

  /// Synchronizes the size of multiple [AutoSizeText]s.
  ///
  /// If you want multiple [AutoSizeText]s to have the same text size, give all
  /// of them the same [AutoSizeGroup] instance. All of them will have the
  /// size of the smallest [AutoSizeText]
  final AutoSizeGroup group;

  /// How the text should be aligned horizontally.
  final TextAlign textAlign;

  /// The directionality of the text.
  ///
  /// This decides how [textAlign] values like [TextAlign.start] and
  /// [TextAlign.end] are interpreted.
  ///
  /// This is also used to disambiguate how to render bidirectional text. For
  /// example, if the [data] is an English phrase followed by a Hebrew phrase,
  /// in a [TextDirection.ltr] context the English phrase will be on the left
  /// and the Hebrew phrase to its right, while in a [TextDirection.rtl]
  /// context, the English phrase will be on the right and the Hebrew phrase on
  /// its left.
  ///
  /// Defaults to the ambient [Directionality], if any.
  final TextDirection textDirection;

  /// Used to select a font when the same Unicode character can
  /// be rendered differently, depending on the locale.
  ///
  /// It's rarely necessary to set this property. By default its value
  /// is inherited from the enclosing app with `Localizations.localeOf(context)`.
  final Locale locale;

  /// Whether the text should break at soft line breaks.
  ///
  /// If false, the glyphs in the text will be positioned as if there was
  /// unlimited horizontal space.
  final bool softWrap;

  /// How visual overflow should be handled.
  final TextOverflow overflow;

  /// The number of font pixels for each logical pixel.
  ///
  /// For example, if the text scale factor is 1.5, text will be 50% larger than
  /// the specified font size.
  ///
  /// This property also affects [minFontSize], [maxFontSize] and [presetFontSizes].
  ///
  /// The value given to the constructor as textScaleFactor. If null, will
  /// use the [MediaQueryData.textScaleFactor] obtained from the ambient
  /// [MediaQuery], or 1.0 if there is no [MediaQuery] in scope.
  final double textScaleFactor;

  /// An optional maximum number of lines for the text to span, wrapping if necessary.
  /// If the text exceeds the given number of lines, it will be resized according
  /// to the specified bounds and if necessary truncated according to [overflow].
  ///
  /// If this is 1, text will not wrap. Otherwise, text will be wrapped at the
  /// edge of the box.
  ///
  /// If this is null, but there is an ambient [DefaultTextStyle] that specifies
  /// an explicit number for its [DefaultTextStyle.maxLines], then the
  /// [DefaultTextStyle] value will take precedence. You can use a [RichText]
  /// widget directly to entirely override the [DefaultTextStyle].
  final int maxLines;

  /// An alternative semantics label for this text.
  ///
  /// If present, the semantics of this widget will contain this value instead
  /// of the actual text.
  final String semanticsLabel;

  @override
  _AutoSizeTextState createState() => _AutoSizeTextState();
}

class _AutoSizeTextState extends State<AutoSizeText> {
  double _previousFontSize;

  Text _cachedText;
  double _cachedFontSize;

  @override
  void initState() {
    super.initState();

    if (widget.group != null) {
      widget.group._register(this);
    }
  }

  @override
  void didUpdateWidget(AutoSizeText oldWidget) {
    _cachedText = null;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      final defaultTextStyle = DefaultTextStyle.of(context);

      var style = widget.style;
      if (widget.style == null || widget.style.inherit) {
        style = defaultTextStyle.style.merge(widget.style);
      }

      final fontSize = _calculateFontSize(size, style, defaultTextStyle);

      Widget text;

      if (widget.group != null) {
        if (fontSize != _previousFontSize) {
          widget.group._updateFontSize(this, fontSize);
        }
        text = _buildText(widget.group._fontSize, style);
      } else {
        text = _buildText(fontSize, style);
      }

      _previousFontSize = fontSize;

      return text;
    });
  }

  double _calculateFontSize(
      BoxConstraints size, TextStyle style, DefaultTextStyle defaultStyle) {
    final userScale =
        widget.textScaleFactor ?? MediaQuery.textScaleFactorOf(context);

    final minFontSize = widget.minFontSize ?? 0;
    assert(
        minFontSize >= 0, 'MinFontSize has to be greater than or equal to 0.');

    final maxFontSize = widget.maxFontSize ?? double.infinity;
    assert(maxFontSize > 0, 'MaxFontSize has to be greater than 0.');

    assert(minFontSize <= maxFontSize,
        'MinFontSize has to be smaller or equal than maxFontSize.');

    final maxLines = widget.maxLines ?? defaultStyle.maxLines;

    var presetIndex = 0;
    if (widget.presetFontSizes != null) {
      assert(widget.presetFontSizes.isNotEmpty, 'PresetFontSizes is empty.');
    }

    double initialFontSize;
    if (widget.presetFontSizes == null) {
      final current = style.fontSize;
      initialFontSize = current.clamp(minFontSize, maxFontSize).toDouble();
    } else {
      initialFontSize = widget.presetFontSizes[presetIndex++];
    }

    var fontSize = initialFontSize * userScale;

    final span = TextSpan(
      style: widget.textSpan?.style ?? style,
      text: widget.textSpan?.text ?? widget.data,
      children: widget.textSpan?.children,
      recognizer: widget.textSpan?.recognizer,
    );
    while (!checkTextFits(span, widget.locale, fontSize / style.fontSize,
        maxLines, size.maxWidth, size.maxHeight)) {
      if (widget.presetFontSizes == null) {
        final newFontSize = fontSize - widget.stepGranularity;
        if (newFontSize < (minFontSize * userScale)) break;
        fontSize = newFontSize;
      } else if (presetIndex < widget.presetFontSizes.length) {
        fontSize = widget.presetFontSizes[presetIndex++] * userScale;
      } else {
        break;
      }
    }

    return fontSize;
  }

  Widget _buildText(double fontSize, TextStyle style) {
    if (_cachedText != null && _cachedFontSize == fontSize) {
      return _cachedText;
    }

    Text text;
    if (widget.data != null) {
      text = Text(
        widget.data,
        style: style.copyWith(fontSize: fontSize),
        textAlign: widget.textAlign,
        textDirection: widget.textDirection,
        locale: widget.locale,
        softWrap: widget.softWrap,
        overflow: widget.overflow,
        textScaleFactor: 1,
        maxLines: widget.maxLines,
        semanticsLabel: widget.semanticsLabel,
      );
    } else {
      text = Text.rich(
        widget.textSpan,
        style: style,
        textAlign: widget.textAlign,
        textDirection: widget.textDirection,
        locale: widget.locale,
        softWrap: widget.softWrap,
        overflow: widget.overflow,
        textScaleFactor: fontSize / style.fontSize,
        maxLines: widget.maxLines,
        semanticsLabel: widget.semanticsLabel,
      );
    }

    _cachedText = text;
    _cachedFontSize = fontSize;
    return text;
  }

  void _notifySync() {
    setState(() {});
  }

  @override
  void dispose() {
    if (widget.group != null) {
      widget.group._remove(this);
    }
    super.dispose();
  }
}

class AutoSizeGroup {
  final _listeners = <_AutoSizeTextState, double>{};
  var _widgetsNotified = false;
  double _fontSize = double.infinity;

  void _register(_AutoSizeTextState text) {
    _listeners[text] = double.infinity;
  }

  void _updateFontSize(_AutoSizeTextState text, double maxFontSize) {
    final oldFontSize = _fontSize;
    if (maxFontSize <= _fontSize) {
      _fontSize = maxFontSize;
      _listeners[text] = maxFontSize;
    } else if (_listeners[text] == _fontSize) {
      _listeners[text] = maxFontSize;
      _fontSize = double.infinity;
      for (var size in _listeners.values) {
        if (size < _fontSize) _fontSize = size;
      }
    } else {
      _listeners[text] = maxFontSize;
    }

    if (oldFontSize != _fontSize) {
      _widgetsNotified = false;
      // Timer.run(_notifyListeners);
      _notifyListeners();
    }
  }

  void _notifyListeners() {
    if (_widgetsNotified) {
      return;
    } else {
      _widgetsNotified = true;
    }

    for (var text in _listeners.keys.toList()) {
      if (text.mounted) {
        text._notifySync();
      } else {
        _listeners.remove(text);
      }
    }
  }

  void _remove(_AutoSizeTextState text) {
    _updateFontSize(text, double.infinity);
    _listeners.remove(text);
  }
}
