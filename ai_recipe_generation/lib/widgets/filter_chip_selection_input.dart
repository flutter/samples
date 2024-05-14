import 'package:ai_recipe_generation/theme.dart';
import 'package:ai_recipe_generation/util/extensions.dart';
import 'package:ai_recipe_generation/util/filter_chip_enums.dart';
import 'package:flutter/material.dart';

class FilterChipSelectionInput<T extends Enum> extends StatefulWidget {
  const FilterChipSelectionInput({
    super.key,
    required this.onChipSelected,
    required this.selectedValues,
    required this.allValues,
  });

  final Null Function(Set) onChipSelected;
  final Set<T> selectedValues;
  final List<T> allValues;

  @override
  State<FilterChipSelectionInput> createState() =>
      _CategorySelectionInputState<T>();
}

class _CategorySelectionInputState<T extends Enum>
    extends State<FilterChipSelectionInput> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: Wrap(
          spacing: 5.0,
          runSpacing: constraints.isMobile ? 5.0 : -5.0,
          children: List<Widget>.generate(
            widget.allValues.length,
            (idx) {
              final chipData = widget.allValues[idx];
              String label(dynamic chipData) {
                if (chipData is CuisineFilter) {
                  return cuisineReadable(chipData);
                } else if (chipData is DietaryRestrictionsFilter) {
                  return dietaryRestrictionReadable(chipData);
                } else if (chipData is BasicIngredientsFilter) {
                  return chipData.name;
                } else {
                  throw "unknown enum";
                }
              }

              return FilterChip(
                color: WidgetStateColor.resolveWith((states) {
                  if (states.contains(WidgetState.hovered)) {
                    return MarketplaceTheme.secondary.withOpacity(.5);
                  }
                  if (states.contains(WidgetState.selected)) {
                    return MarketplaceTheme.secondary.withOpacity(.3);
                  }
                  return Theme.of(context).splashColor;
                }),
                surfaceTintColor: Colors.transparent,
                shadowColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                padding: const EdgeInsets.all(4),
                label: Text(
                  label(chipData),
                  style: MarketplaceTheme.dossierParagraph,
                ),
                selected: widget.selectedValues.contains(chipData),
                onSelected: (selected) {
                  setState(
                    () {
                      if (selected) {
                        widget.selectedValues.add(chipData as T);
                      } else {
                        widget.selectedValues.remove(chipData);
                      }
                      widget.onChipSelected(widget.selectedValues);
                    },
                  );
                },
              );
            },
          ).toList(),
        ),
      );
    });
  }
}
