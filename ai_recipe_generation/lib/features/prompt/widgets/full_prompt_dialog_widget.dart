import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../theme.dart';
import '../../../widgets/prompt_image_widget.dart';
import '../prompt_model.dart';

class FullPromptDialog extends StatelessWidget {
  const FullPromptDialog({super.key, required this.promptData});

  final PromptData promptData;

  Widget bulletRow(String text, {IconData? icon}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon ?? Symbols.label_important_outline),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            text,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: MarketplaceTheme.borderColor),
          ),
          padding: const EdgeInsets.all(MarketplaceTheme.spacing4),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "This is the full prompt that will be sent to Google's Gemini model.",
                style: MarketplaceTheme.heading3,
              ),
              const SizedBox(height: MarketplaceTheme.spacing4),
              if (promptData.images.isNotEmpty)
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: MarketplaceTheme.borderColor,
                      ),
                    ),
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var image in promptData.images)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PromptImage(
                            file: image,
                          ),
                        ),
                    ],
                  ),
                ),
              const SizedBox(height: MarketplaceTheme.spacing4),
              bulletRow(promptData.textInput),
              if (promptData.additionalTextInputs.isNotEmpty)
                ...promptData.additionalTextInputs.map((i) => bulletRow(i)),
              const SizedBox(height: MarketplaceTheme.spacing4),
              TextButton.icon(
                icon: Icon(
                  Symbols.close,
                  color: Colors.black87,
                ),
                label: Text(
                  'Close',
                  style: MarketplaceTheme.dossierParagraph,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith(
                    (states) {
                      return RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black26),
                        borderRadius: BorderRadius.all(
                          Radius.circular(MarketplaceTheme.defaultBorderRadius),
                        ),
                      );
                    },
                  ),
                  textStyle: MaterialStateTextStyle.resolveWith(
                    (states) {
                      return MarketplaceTheme.dossierParagraph
                          .copyWith(color: Colors.black45);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
