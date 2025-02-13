import 'dart:math' as math;

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

/// Signature for the generator function that produces an [InlineSpan] for replacement
/// in a [TextEditingInlineSpanReplacement].
///
/// This function takes a String which is the matched substring to be replaced and a [TextRange]
/// representing the range in the full string the matched substring originated from.
///
/// This used in [ReplacementTextEditingController] to generate [InlineSpan]s when
/// a match is found for replacement.
typedef InlineSpanGenerator = InlineSpan Function(String, TextRange);

/// Represents one "replacement" to check for, consisting of a [TextRange] to
/// match and a generator [InlineSpanGenerator] function that creates an
/// [InlineSpan] from a matched string.
///
/// The generator function is called for every match of the range found.
///
/// Typically, the generator should return a custom [TextSpan] with unique styling.
///
/// {@tool snippet}
/// In this simple example, the text in the range of 0 to 5 is styled in blue.
///
/// ```dart
/// TextEditingInlineSpanReplacement(
///   TextRange(start: 0, end: 5),
///   (String value, TextRange range) {
///     return TextSpan(text: value, style: TextStyle(color: Colors.blue));
///   },
/// )
/// ```
///
/// See also:
///
/// * [ReplacementTextEditingController], which uses this class to create
/// rich text fields.
/// {@end-tool}
class TextEditingInlineSpanReplacement {
  /// Constructs a replacement that replaces matches of the [TextRange] with the
  /// output of the [generator].
  TextEditingInlineSpanReplacement(this.range, this.generator, this.expand);

  /// The [TextRange] to replace.
  ///
  /// Matched ranges are replaced with the output of the [generator] callback.
  TextRange range;

  /// Function that returns an [InlineSpan] instance for each match of
  /// [TextRange].
  InlineSpanGenerator generator;

  bool expand;

  TextEditingInlineSpanReplacement? onDelete(TextEditingDeltaDeletion delta) {
    final TextRange deletedRange = delta.deletedRange;
    final int deletedLength = delta.textDeleted.length;

    if (range.start >= deletedRange.start &&
        (range.start < deletedRange.end && range.end > deletedRange.end)) {
      return copy(
        range: TextRange(
          start: deletedRange.end - deletedLength,
          end: range.end - deletedLength,
        ),
      );
    } else if ((range.start < deletedRange.start &&
            range.end > deletedRange.start) &&
        range.end <= deletedRange.end) {
      return copy(
        range: TextRange(start: range.start, end: deletedRange.start),
      );
    } else if (range.start < deletedRange.start &&
        range.end > deletedRange.end) {
      return copy(
        range: TextRange(start: range.start, end: range.end - deletedLength),
      );
    } else if (range.start >= deletedRange.start &&
        range.end <= deletedRange.end) {
      return null;
    } else if (range.start > deletedRange.start &&
        range.start >= deletedRange.end) {
      return copy(
        range: TextRange(
          start: range.start - deletedLength,
          end: range.end - deletedLength,
        ),
      );
    } else if (range.end <= deletedRange.start &&
        range.end < deletedRange.end) {
      return copy(range: TextRange(start: range.start, end: range.end));
    }

    return null;
  }

  TextEditingInlineSpanReplacement? onInsertion(
    TextEditingDeltaInsertion delta,
  ) {
    final int insertionOffset = delta.insertionOffset;
    final int insertedLength = delta.textInserted.length;

    if (range.end == insertionOffset) {
      if (expand) {
        return copy(
          range: TextRange(start: range.start, end: range.end + insertedLength),
        );
      } else {
        return copy(range: TextRange(start: range.start, end: range.end));
      }
    }
    if (range.start < insertionOffset && range.end < insertionOffset) {
      return copy(range: TextRange(start: range.start, end: range.end));
    } else if (range.start >= insertionOffset && range.end > insertionOffset) {
      return copy(
        range: TextRange(
          start: range.start + insertedLength,
          end: range.end + insertedLength,
        ),
      );
    } else if (range.start < insertionOffset && range.end > insertionOffset) {
      return copy(
        range: TextRange(start: range.start, end: range.end + insertedLength),
      );
    }

    return null;
  }

  List<TextEditingInlineSpanReplacement>? onReplacement(
    TextEditingDeltaReplacement delta,
  ) {
    final TextRange replacedRange = delta.replacedRange;
    final bool replacementShortenedText =
        delta.replacementText.length < delta.textReplaced.length;
    final bool replacementLengthenedText =
        delta.replacementText.length > delta.textReplaced.length;
    final bool replacementEqualLength =
        delta.replacementText.length == delta.textReplaced.length;
    final int changedOffset =
        replacementShortenedText
            ? delta.textReplaced.length - delta.replacementText.length
            : delta.replacementText.length - delta.textReplaced.length;

    if (range.start >= replacedRange.start &&
        (range.start < replacedRange.end && range.end > replacedRange.end)) {
      if (replacementShortenedText) {
        return [
          copy(
            range: TextRange(
              start: replacedRange.end - changedOffset,
              end: range.end - changedOffset,
            ),
          ),
        ];
      } else if (replacementLengthenedText) {
        return [
          copy(
            range: TextRange(
              start: replacedRange.end + changedOffset,
              end: range.end + changedOffset,
            ),
          ),
        ];
      } else if (replacementEqualLength) {
        return [
          copy(range: TextRange(start: replacedRange.end, end: range.end)),
        ];
      }
    } else if ((range.start < replacedRange.start &&
            range.end > replacedRange.start) &&
        range.end <= replacedRange.end) {
      return [
        copy(range: TextRange(start: range.start, end: replacedRange.start)),
      ];
    } else if (range.start < replacedRange.start &&
        range.end > replacedRange.end) {
      if (replacementShortenedText) {
        return [
          copy(range: TextRange(start: range.start, end: replacedRange.start)),
          copy(
            range: TextRange(
              start: replacedRange.end - changedOffset,
              end: range.end - changedOffset,
            ),
          ),
        ];
      } else if (replacementLengthenedText) {
        return [
          copy(range: TextRange(start: range.start, end: replacedRange.start)),
          copy(
            range: TextRange(
              start: replacedRange.end + changedOffset,
              end: range.end + changedOffset,
            ),
          ),
        ];
      } else if (replacementEqualLength) {
        return [
          copy(range: TextRange(start: range.start, end: replacedRange.start)),
          copy(range: TextRange(start: replacedRange.end, end: range.end)),
        ];
      }
    } else if (range.start >= replacedRange.start &&
        range.end <= replacedRange.end) {
      // remove attribute.
      return null;
    } else if (range.start > replacedRange.start &&
        range.start >= replacedRange.end) {
      if (replacementShortenedText) {
        return [
          copy(
            range: TextRange(
              start: range.start - changedOffset,
              end: range.end - changedOffset,
            ),
          ),
        ];
      } else if (replacementLengthenedText) {
        return [
          copy(
            range: TextRange(
              start: range.start + changedOffset,
              end: range.end + changedOffset,
            ),
          ),
        ];
      } else if (replacementEqualLength) {
        return [this];
      }
    } else if (range.end <= replacedRange.start &&
        range.end < replacedRange.end) {
      return [copy(range: TextRange(start: range.start, end: range.end))];
    }

    return null;
  }

  TextEditingInlineSpanReplacement? onNonTextUpdate(
    TextEditingDeltaNonTextUpdate delta,
  ) {
    if (range.isCollapsed) {
      if (range.start != delta.selection.start &&
          range.end != delta.selection.end) {
        return null;
      }
    }
    return this;
  }

  List<TextEditingInlineSpanReplacement>? removeRange(TextRange removalRange) {
    if (range.start >= removalRange.start &&
        (range.start < removalRange.end && range.end > removalRange.end)) {
      return [copy(range: TextRange(start: removalRange.end, end: range.end))];
    } else if ((range.start < removalRange.start &&
            range.end > removalRange.start) &&
        range.end <= removalRange.end) {
      return [
        copy(range: TextRange(start: range.start, end: removalRange.start)),
      ];
    } else if (range.start < removalRange.start &&
        range.end > removalRange.end) {
      return [
        copy(
          range: TextRange(start: range.start, end: removalRange.start),
          expand: removalRange.isCollapsed ? false : expand,
        ),
        copy(range: TextRange(start: removalRange.end, end: range.end)),
      ];
    } else if (range.start >= removalRange.start &&
        range.end <= removalRange.end) {
      return null;
    } else if (range.start > removalRange.start &&
        range.start >= removalRange.end) {
      return [this];
    } else if (range.end <= removalRange.start &&
        range.end < removalRange.end) {
      return [this];
    } else if (removalRange.isCollapsed && range.end == removalRange.start) {
      return [this];
    }

    return null;
  }

  /// Creates a new replacement with all properties copied except for range, which
  /// is updated to the specified value.
  TextEditingInlineSpanReplacement copy({TextRange? range, bool? expand}) {
    return TextEditingInlineSpanReplacement(
      range ?? this.range,
      generator,
      expand ?? this.expand,
    );
  }

  @override
  String toString() {
    return 'TextEditingInlineSpanReplacement { range: $range, generator: $generator }';
  }
}

/// A [TextEditingController] that contains a list of [TextEditingInlineSpanReplacement]s that
/// insert custom [InlineSpan]s in place of matched [TextRange]s.
///
/// This controller must be passed [TextEditingInlineSpanReplacement], each of which contains
/// a [TextRange] to match with and a generator function to generate an [InlineSpan] to replace
/// the matched [TextRange]s with based on the matched string.
///
/// See [TextEditingInlineSpanReplacement] for example replacements to provide this class with.
class ReplacementTextEditingController extends TextEditingController {
  /// Constructs a controller with optional text that handles the provided list of replacements.
  ReplacementTextEditingController({
    super.text,
    List<TextEditingInlineSpanReplacement>? replacements,
    this.composingRegionReplaceable = true,
  }) : replacements = replacements ?? [];

  /// Creates a controller for an editable text field from an initial [TextEditingValue].
  ///
  /// This constructor treats a null [value] argument as if it were [TextEditingValue.empty].
  ReplacementTextEditingController.fromValue(
    super.value, {
    List<TextEditingInlineSpanReplacement>? replacements,
    this.composingRegionReplaceable = true,
  }) : super.fromValue();

  /// The [TextEditingInlineSpanReplacement]s that are evaluated on the editing value.
  ///
  /// Each replacement is evaluated in order from first to last. If multiple replacement
  /// [TextRange]s match against the same range of text,
  List<TextEditingInlineSpanReplacement>? replacements;

  /// If composing regions should be matched against for replacements.
  ///
  /// When false, composing regions are invalidated from being matched against.
  ///
  /// When true, composing regions are attempted to be applied after ranges are
  /// matched and replacements made. This means that composing region may sometimes
  /// fail to display if the text in the composing region matches against of the
  /// replacement ranges.
  final bool composingRegionReplaceable;

  void applyReplacement(TextEditingInlineSpanReplacement replacement) {
    if (replacements == null) {
      replacements = [];
      replacements!.add(replacement);
    } else {
      replacements!.add(replacement);
    }
  }

  /// Update replacement ranges based on [TextEditingDelta]'s coming from a
  /// [DeltaTextInputClient]'s.
  ///
  /// On a insertion, the replacements that ranges fall inclusively
  /// within the range of the insertion, should be updated to take into account
  /// the insertion that happened within the replacement range. i.e. we expand
  /// the range.
  ///
  /// On a insertion, the replacements that ranges fall after the
  /// range of the insertion, should be updated to take into account the insertion
  /// that occurred and the offset it created as a result.
  ///
  /// On a insertion, the replacements that ranges fall before
  /// the range of the insertion, should be skipped and not updated as their values
  /// are not offset by the insertion.
  ///
  /// On a insertion, if a replacement range front edge is touched by
  /// the insertion, the range should be updated with the insertion offset. i.e.
  /// the replacement range is pushed forward.
  ///
  /// On a insertion, if a replacement range back edge is touched by
  /// the insertion offset, nothing should be done. i.e. do not expand the range.
  ///
  /// On a deletion, the replacements that ranges fall inclusively
  /// within the range of the deletion, should be updated to take into account
  /// the deletion that happened within the replacement range. i.e. we contract the range.
  ///
  /// On a deletion, the replacement ranges that fall after the
  /// ranges of deletion, should be updated to take into account the deletion
  /// that occurred and the offset it created as a result.
  ///
  /// On a deletion, the replacement ranges that fall before the
  /// ranges of deletion, should be skipped and not updated as their values are
  /// not offset by the deletion.
  ///
  /// On a replacement, the replacements that ranges fall inclusively
  /// within the range of the replaced range, should be updated to take into account
  /// that the replaced range should be un-styled. i.e. we split the replacement ranges
  /// into two.
  ///
  /// On a replacement, the replacement ranges that fall after the
  /// ranges of the replacement, should be updated to take into account the replacement
  /// that occurred and the offset it created as a result.
  ///
  /// On a replacement, the replacement ranges that fall before the
  /// ranges of replacement, should be skipped and not updated as their values are
  /// not offset by the replacement.
  void syncReplacementRanges(TextEditingDelta delta) {
    if (replacements == null) return;

    if (text.isEmpty) replacements!.clear();

    List<TextEditingInlineSpanReplacement> toRemove = [];
    List<TextEditingInlineSpanReplacement> toAdd = [];

    for (int i = 0; i < replacements!.length; i++) {
      late final TextEditingInlineSpanReplacement? mutatedReplacement;

      if (delta is TextEditingDeltaInsertion) {
        mutatedReplacement = replacements![i].onInsertion(delta);
      } else if (delta is TextEditingDeltaDeletion) {
        mutatedReplacement = replacements![i].onDelete(delta);
      } else if (delta is TextEditingDeltaReplacement) {
        List<TextEditingInlineSpanReplacement>? newReplacements;
        newReplacements = replacements![i].onReplacement(delta);

        if (newReplacements != null) {
          if (newReplacements.length == 1) {
            mutatedReplacement = newReplacements[0];
          } else {
            mutatedReplacement = null;
            toAdd.addAll(newReplacements);
          }
        } else {
          mutatedReplacement = null;
        }
      } else if (delta is TextEditingDeltaNonTextUpdate) {
        mutatedReplacement = replacements![i].onNonTextUpdate(delta);
      }

      if (mutatedReplacement == null) {
        toRemove.add(replacements![i]);
      } else {
        replacements![i] = mutatedReplacement;
      }
    }

    for (final TextEditingInlineSpanReplacement replacementToRemove
        in toRemove) {
      replacements!.remove(replacementToRemove);
    }

    replacements!.addAll(toAdd);
  }

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    assert(
      !value.composing.isValid || !withComposing || value.isComposingRangeValid,
    );

    // Keep a mapping of TextRanges to the InlineSpan to replace it with.
    final Map<TextRange, InlineSpan> rangeSpanMapping =
        <TextRange, InlineSpan>{};

    // Iterate through TextEditingInlineSpanReplacements, handling overlapping
    // replacements and mapping them towards a generated InlineSpan.
    if (replacements != null) {
      for (final TextEditingInlineSpanReplacement replacement
          in replacements!) {
        _addToMappingWithOverlaps(
          replacement.generator,
          TextRange(start: replacement.range.start, end: replacement.range.end),
          rangeSpanMapping,
          value.text,
        );
      }
    }

    // If the composing range is out of range for the current text, ignore it to
    // preserve the tree integrity, otherwise in release mode a RangeError will
    // be thrown and this EditableText will be built with a broken subtree.
    //
    // Add composing region as a replacement to a TextSpan with underline.
    if (composingRegionReplaceable &&
        value.isComposingRangeValid &&
        withComposing) {
      _addToMappingWithOverlaps(
        (value, range) {
          final TextStyle composingStyle =
              style != null
                  ? style.merge(
                    const TextStyle(decoration: TextDecoration.underline),
                  )
                  : const TextStyle(decoration: TextDecoration.underline);
          return TextSpan(style: composingStyle, text: value);
        },
        value.composing,
        rangeSpanMapping,
        value.text,
      );
    }

    // Sort the matches by start index. Since no overlapping exists, this is safe.
    final List<TextRange> sortedRanges = rangeSpanMapping.keys.toList();
    sortedRanges.sort((a, b) => a.start.compareTo(b.start));

    // Create TextSpans for non-replaced text ranges and insert the replacements spans
    // for any ranges that are marked to be replaced.
    final List<InlineSpan> spans = <InlineSpan>[];
    int previousEndIndex = 0;
    for (final TextRange range in sortedRanges) {
      if (range.start > previousEndIndex) {
        spans.add(
          TextSpan(text: value.text.substring(previousEndIndex, range.start)),
        );
      }
      spans.add(rangeSpanMapping[range]!);
      previousEndIndex = range.end;
    }
    // Add any trailing text as a regular TextSpan.
    if (previousEndIndex < value.text.length) {
      spans.add(
        TextSpan(
          text: value.text.substring(previousEndIndex, value.text.length),
        ),
      );
    }
    return TextSpan(style: style, children: spans);
  }

  static void _addToMappingWithOverlaps(
    InlineSpanGenerator generator,
    TextRange matchedRange,
    Map<TextRange, InlineSpan> rangeSpanMapping,
    String text,
  ) {
    // In some cases we should allow for overlap.
    // For example in the case of two TextSpans matching the same range for replacement,
    // we should try to merge the styles into one TextStyle and build a new TextSpan.
    bool overlap = false;
    List<TextRange> overlapRanges = <TextRange>[];
    for (final TextRange range in rangeSpanMapping.keys) {
      if (math.max(matchedRange.start, range.start) <=
          math.min(matchedRange.end, range.end)) {
        overlap = true;
        overlapRanges.add(range);
      }
    }

    final List<List<dynamic>> overlappingTriples = <List<dynamic>>[];

    if (overlap) {
      overlappingTriples.add(<dynamic>[
        matchedRange.start,
        matchedRange.end,
        generator(matchedRange.textInside(text), matchedRange).style,
      ]);

      for (final TextRange overlappingRange in overlapRanges) {
        overlappingTriples.add(<dynamic>[
          overlappingRange.start,
          overlappingRange.end,
          rangeSpanMapping[overlappingRange]!.style,
        ]);
        rangeSpanMapping.remove(overlappingRange);
      }

      final List<dynamic> toRemoveRangesThatHaveBeenMerged = <dynamic>[];
      final List<dynamic> toAddRangesThatHaveBeenMerged = <dynamic>[];
      for (int i = 0; i < overlappingTriples.length; i++) {
        bool didOverlap = false;
        List<dynamic> tripleA = overlappingTriples[i];
        if (toRemoveRangesThatHaveBeenMerged.contains(tripleA)) continue;
        for (int j = i + 1; j < overlappingTriples.length; j++) {
          final List<dynamic> tripleB = overlappingTriples[j];
          if (math.max(tripleA[0] as int, tripleB[0] as int) <=
                  math.min(tripleA[1] as int, tripleB[1] as int) &&
              tripleA[2] == tripleB[2]) {
            toRemoveRangesThatHaveBeenMerged.addAll(<dynamic>[
              tripleA,
              tripleB,
            ]);
            tripleA = <dynamic>[
              math.min(tripleA[0] as int, tripleB[0] as int),
              math.max(tripleA[1] as int, tripleB[1] as int),
              tripleA[2],
            ];
            didOverlap = true;
          }
        }

        if (didOverlap &&
            !toAddRangesThatHaveBeenMerged.contains(tripleA) &&
            !toRemoveRangesThatHaveBeenMerged.contains(tripleA)) {
          toAddRangesThatHaveBeenMerged.add(tripleA);
        }
      }

      for (var tripleToRemove in toRemoveRangesThatHaveBeenMerged) {
        overlappingTriples.remove(tripleToRemove);
      }

      for (var tripleToAdd in toAddRangesThatHaveBeenMerged) {
        overlappingTriples.add(tripleToAdd as List<dynamic>);
      }

      List<int> endPoints = <int>[];
      for (List<dynamic> triple in overlappingTriples) {
        Set<int> ends = <int>{};
        ends.add(triple[0] as int);
        ends.add(triple[1] as int);
        endPoints.addAll(ends.toList());
      }
      endPoints.sort();
      Map<int, Set<TextStyle>> start = <int, Set<TextStyle>>{};
      Map<int, Set<TextStyle>> end = <int, Set<TextStyle>>{};

      for (final int e in endPoints) {
        start[e] = <TextStyle>{};
        end[e] = <TextStyle>{};
      }

      for (List<dynamic> triple in overlappingTriples) {
        start[triple[0]]!.add(triple[2] as TextStyle);
        end[triple[1]]!.add(triple[2] as TextStyle);
      }

      Set<TextStyle> styles = <TextStyle>{};
      List<int> otherEndPoints =
          endPoints.getRange(1, endPoints.length).toList();
      for (int i = 0; i < endPoints.length - 1; i++) {
        styles = styles.difference(end[endPoints[i]]!);
        styles.addAll(start[endPoints[i]]!);
        TextStyle? mergedStyles;
        final TextRange uniqueRange = TextRange(
          start: endPoints[i],
          end: otherEndPoints[i],
        );
        for (final TextStyle style in styles) {
          if (mergedStyles == null) {
            mergedStyles = style;
          } else {
            mergedStyles = mergedStyles.merge(style);
          }
        }
        rangeSpanMapping[uniqueRange] = TextSpan(
          text: uniqueRange.textInside(text),
          style: mergedStyles,
        );
      }
    }

    if (!overlap) {
      rangeSpanMapping[matchedRange] = generator(
        matchedRange.textInside(text),
        matchedRange,
      );
    }

    // Clean up collapsed ranges that we don't need to style.
    final List<TextRange> toRemove = <TextRange>[];

    for (final TextRange range in rangeSpanMapping.keys) {
      if (range.isCollapsed) toRemove.add(range);
    }

    for (final TextRange range in toRemove) {
      rangeSpanMapping.remove(range);
    }
  }

  void disableExpand(TextStyle style) {
    final List<TextEditingInlineSpanReplacement> toRemove = [];
    final List<TextEditingInlineSpanReplacement> toAdd = [];

    for (final TextEditingInlineSpanReplacement replacement in replacements!) {
      if (replacement.range.end == selection.start) {
        TextStyle? replacementStyle =
            (replacement.generator('', const TextRange.collapsed(0))
                    as TextSpan)
                .style;
        if (replacementStyle! == style) {
          toRemove.add(replacement);
          toAdd.add(replacement.copy(expand: false));
        }
      }
    }

    for (final TextEditingInlineSpanReplacement replacementToRemove
        in toRemove) {
      replacements!.remove(replacementToRemove);
    }

    for (final TextEditingInlineSpanReplacement replacementWithExpandDisabled
        in toAdd) {
      replacements!.add(replacementWithExpandDisabled);
    }
  }

  List<TextStyle> getReplacementsAtSelection(TextSelection selection) {
    // [left replacement]|[right replacement], only left replacement should be
    // reported.
    //
    // Selection of a range of replacements should only enable the replacements
    // common to the selection. If there are no common replacements then none
    // should be enabled.
    final List<TextStyle> stylesAtSelection = <TextStyle>[];

    for (final TextEditingInlineSpanReplacement replacement in replacements!) {
      if (selection.isCollapsed) {
        if (math.max(replacement.range.start, selection.start) <=
            math.min(replacement.range.end, selection.end)) {
          if (selection.end != replacement.range.start) {
            if (selection.start == replacement.range.end) {
              if (replacement.expand) {
                stylesAtSelection.add(
                  replacement.generator('', replacement.range).style!,
                );
              }
            } else {
              stylesAtSelection.add(
                replacement.generator('', replacement.range).style!,
              );
            }
          }
        }
      } else {
        if (math.max(replacement.range.start, selection.start) <=
            math.min(replacement.range.end, selection.end)) {
          if (replacement.range.start <= selection.start &&
              replacement.range.end >= selection.end) {
            stylesAtSelection.add(
              replacement.generator('', replacement.range).style!,
            );
          }
        }
      }
    }

    return stylesAtSelection;
  }

  void removeReplacementsAtRange(TextRange removalRange, TextStyle? attribute) {
    final List<TextEditingInlineSpanReplacement> toRemove = [];
    final List<TextEditingInlineSpanReplacement> toAdd = [];

    for (int i = 0; i < replacements!.length; i++) {
      TextEditingInlineSpanReplacement replacement = replacements![i];
      InlineSpan replacementSpan = replacement.generator(
        '',
        const TextRange.collapsed(0),
      );
      TextStyle? replacementStyle = replacementSpan.style;
      late final TextEditingInlineSpanReplacement? mutatedReplacement;

      if ((math.max(replacement.range.start, removalRange.start) <=
              math.min(replacement.range.end, removalRange.end)) &&
          replacementStyle != null) {
        if (replacementStyle == attribute!) {
          List<TextEditingInlineSpanReplacement>? newReplacements = replacement
              .removeRange(removalRange);

          if (newReplacements != null) {
            if (newReplacements.length == 1) {
              mutatedReplacement = newReplacements[0];
            } else {
              mutatedReplacement = null;
              toAdd.addAll(newReplacements);
            }
          } else {
            mutatedReplacement = null;
          }

          if (mutatedReplacement == null) {
            toRemove.add(replacements![i]);
          } else {
            replacements![i] = mutatedReplacement;
          }
        }
      }
    }

    for (TextEditingInlineSpanReplacement replacementToAdd in toAdd) {
      replacements!.add(replacementToAdd);
    }

    for (TextEditingInlineSpanReplacement replacementToRemove in toRemove) {
      replacements!.remove(replacementToRemove);
    }
  }
}
