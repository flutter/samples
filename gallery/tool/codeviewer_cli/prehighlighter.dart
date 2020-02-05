// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:string_scanner/string_scanner.dart';

abstract class SyntaxPrehighlighter {
  List<CodeSpan> format(String src);
}

class DartSyntaxPrehighlighter extends SyntaxPrehighlighter {
  DartSyntaxPrehighlighter() {
    _spans = <_HighlightSpan>[];
  }

  static const List<String> _keywords = <String>[
    'abstract',
    'as',
    'assert',
    'async',
    'await',
    'break',
    'case',
    'catch',
    'class',
    'const',
    'continue',
    'default',
    'deferred',
    'do',
    'dynamic',
    'else',
    'enum',
    'export',
    'external',
    'extends',
    'factory',
    'false',
    'final',
    'finally',
    'for',
    'get',
    'if',
    'implements',
    'import',
    'in',
    'is',
    'library',
    'new',
    'null',
    'operator',
    'part',
    'rethrow',
    'return',
    'set',
    'static',
    'super',
    'switch',
    'sync',
    'this',
    'throw',
    'true',
    'try',
    'typedef',
    'var',
    'void',
    'while',
    'with',
    'yield',
  ];

  static const List<String> _builtInTypes = <String>[
    'int',
    'double',
    'num',
    'bool',
  ];

  String _src;
  StringScanner _scanner;

  List<_HighlightSpan> _spans;

  @override
  List<CodeSpan> format(String src) {
    _src = src;
    _scanner = StringScanner(_src);

    if (_generateSpans()) {
      // Successfully parsed the code
      final List<CodeSpan> formattedText = <CodeSpan>[];
      int currentPosition = 0;

      for (_HighlightSpan span in _spans) {
        if (currentPosition != span.start) {
          formattedText
              .add(CodeSpan(text: _src.substring(currentPosition, span.start)));
        }

        formattedText
            .add(CodeSpan(type: span.type, text: span.textForSpan(_src)));

        currentPosition = span.end;
      }

      if (currentPosition != _src.length) {
        formattedText
            .add(CodeSpan(text: _src.substring(currentPosition, _src.length)));
      }

      return formattedText;
    } else {
      // Parsing failed, return with only basic formatting
      return [CodeSpan(type: _HighlightType.base, text: src)];
    }
  }

  bool _generateSpans() {
    int lastLoopPosition = _scanner.position;

    while (!_scanner.isDone) {
      // Skip White space
      _scanner.scan(RegExp(r'\s+'));

      // Block comments
      if (_scanner.scan(RegExp(r'/\*(.|\n)*\*/'))) {
        _spans.add(_HighlightSpan(
          _HighlightType.comment,
          _scanner.lastMatch.start,
          _scanner.lastMatch.end,
        ));
        continue;
      }

      // Line comments
      if (_scanner.scan('//')) {
        final int startComment = _scanner.lastMatch.start;

        bool eof = false;
        int endComment;
        if (_scanner.scan(RegExp(r'.*\n'))) {
          endComment = _scanner.lastMatch.end - 1;
        } else {
          eof = true;
          endComment = _src.length;
        }

        _spans.add(_HighlightSpan(
          _HighlightType.comment,
          startComment,
          endComment,
        ));

        if (eof) {
          break;
        }

        continue;
      }

      // Raw r"String"
      if (_scanner.scan(RegExp(r'r".*"'))) {
        _spans.add(_HighlightSpan(
          _HighlightType.string,
          _scanner.lastMatch.start,
          _scanner.lastMatch.end,
        ));
        continue;
      }

      // Raw r'String'
      if (_scanner.scan(RegExp(r"r'.*'"))) {
        _spans.add(_HighlightSpan(
          _HighlightType.string,
          _scanner.lastMatch.start,
          _scanner.lastMatch.end,
        ));
        continue;
      }

      // Multiline """String"""
      if (_scanner.scan(RegExp(r'"""(?:[^"\\]|\\(.|\n))*"""'))) {
        _spans.add(_HighlightSpan(
          _HighlightType.string,
          _scanner.lastMatch.start,
          _scanner.lastMatch.end,
        ));
        continue;
      }

      // Multiline '''String'''
      if (_scanner.scan(RegExp(r"'''(?:[^'\\]|\\(.|\n))*'''"))) {
        _spans.add(_HighlightSpan(
          _HighlightType.string,
          _scanner.lastMatch.start,
          _scanner.lastMatch.end,
        ));
        continue;
      }

      // "String"
      if (_scanner.scan(RegExp(r'"(?:[^"\\]|\\.)*"'))) {
        _spans.add(_HighlightSpan(
          _HighlightType.string,
          _scanner.lastMatch.start,
          _scanner.lastMatch.end,
        ));
        continue;
      }

      // 'String'
      if (_scanner.scan(RegExp(r"'(?:[^'\\]|\\.)*'"))) {
        _spans.add(_HighlightSpan(
          _HighlightType.string,
          _scanner.lastMatch.start,
          _scanner.lastMatch.end,
        ));
        continue;
      }

      // Double
      if (_scanner.scan(RegExp(r'\d+\.\d+'))) {
        _spans.add(_HighlightSpan(
          _HighlightType.number,
          _scanner.lastMatch.start,
          _scanner.lastMatch.end,
        ));
        continue;
      }

      // Integer
      if (_scanner.scan(RegExp(r'\d+'))) {
        _spans.add(_HighlightSpan(_HighlightType.number,
            _scanner.lastMatch.start, _scanner.lastMatch.end));
        continue;
      }

      // Punctuation
      if (_scanner.scan(RegExp(r'[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]'))) {
        _spans.add(_HighlightSpan(
          _HighlightType.punctuation,
          _scanner.lastMatch.start,
          _scanner.lastMatch.end,
        ));
        continue;
      }

      // Meta data
      if (_scanner.scan(RegExp(r'@\w+'))) {
        _spans.add(_HighlightSpan(
          _HighlightType.keyword,
          _scanner.lastMatch.start,
          _scanner.lastMatch.end,
        ));
        continue;
      }

      // Words
      if (_scanner.scan(RegExp(r'\w+'))) {
        _HighlightType type;

        String word = _scanner.lastMatch[0];
        if (word.startsWith('_')) {
          word = word.substring(1);
        }

        if (_keywords.contains(word)) {
          type = _HighlightType.keyword;
        } else if (_builtInTypes.contains(word)) {
          type = _HighlightType.keyword;
        } else if (_firstLetterIsUpperCase(word)) {
          type = _HighlightType.klass;
        } else if (word.length >= 2 &&
            word.startsWith('k') &&
            _firstLetterIsUpperCase(word.substring(1))) {
          type = _HighlightType.constant;
        }

        if (type != null) {
          _spans.add(_HighlightSpan(
            type,
            _scanner.lastMatch.start,
            _scanner.lastMatch.end,
          ));
        }
      }

      // Check if this loop did anything
      if (lastLoopPosition == _scanner.position) {
        // Failed to parse this file, abort gracefully
        return false;
      }
      lastLoopPosition = _scanner.position;
    }

    _simplify();
    return true;
  }

  void _simplify() {
    for (int i = _spans.length - 2; i >= 0; i -= 1) {
      if (_spans[i].type == _spans[i + 1].type &&
          _spans[i].end == _spans[i + 1].start) {
        _spans[i] = _HighlightSpan(
          _spans[i].type,
          _spans[i].start,
          _spans[i + 1].end,
        );
        _spans.removeAt(i + 1);
      }
    }
  }

  bool _firstLetterIsUpperCase(String str) {
    if (str.isNotEmpty) {
      final String first = str.substring(0, 1);
      return first == first.toUpperCase();
    }
    return false;
  }
}

enum _HighlightType {
  number,
  comment,
  keyword,
  string,
  punctuation,
  klass,
  constant,
  base,
}

class _HighlightSpan {
  _HighlightSpan(this.type, this.start, this.end);
  final _HighlightType type;
  final int start;
  final int end;

  String textForSpan(String src) {
    return src.substring(start, end);
  }
}

class CodeSpan {
  CodeSpan({this.type = _HighlightType.base, this.text});

  final _HighlightType type;
  final String text;

  @override
  String toString() {
    return 'TextSpan('
        'style: codeStyle.${_styleNameOf(type)}, '
        "text: '${_escape(text)}'"
        ')';
  }
}

String _styleNameOf(_HighlightType type) {
  switch (type) {
    case _HighlightType.number:
      return 'numberStyle';
    case _HighlightType.comment:
      return 'commentStyle';
    case _HighlightType.keyword:
      return 'keywordStyle';
    case _HighlightType.string:
      return 'stringStyle';
    case _HighlightType.punctuation:
      return 'punctuationStyle';
    case _HighlightType.klass:
      return 'classStyle';
    case _HighlightType.constant:
      return 'constantStyle';
    case _HighlightType.base:
      return 'baseStyle';
  }
  return '';
}

String _escape(String text) {
  StringBuffer escapedText = StringBuffer();

  for (final char in text.runes) {
    if (char < 0x20 ||
        char >= 0x7F ||
        char == 0x22 ||
        char == 0x24 ||
        char == 0x27 ||
        char == 0x5C) {
      if (char <= 0xffff) {
        escapedText.write("\\u${_encodeAndPad(char)}");
      } else {
        escapedText.write("\\u{${_encode(char)}}");
      }
    } else {
      escapedText.write(String.fromCharCode(char));
    }
  }

  return escapedText.toString();
}

String _encode(int charCode) {
  return charCode.toRadixString(16);
}

String _encodeAndPad(int charCode) {
  String encoded = _encode(charCode);
  return '0' * (4 - encoded.length) + encoded;
}
