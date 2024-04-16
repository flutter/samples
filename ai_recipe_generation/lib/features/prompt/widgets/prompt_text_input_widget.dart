import 'package:flutter/material.dart';

class PromptTextInput extends StatelessWidget {
  PromptTextInput({
    super.key,
    required this.onChanged,
    required this.onSendPressed,
    textEditingController,
  }) : _controller = textEditingController ?? TextEditingController();

  final ValueChanged<String> onChanged;
  final VoidCallback onSendPressed;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width - 110,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                maxLines: null,
                controller: _controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Additional context...",
                ),
                onChanged: (value) {
                  onChanged(value);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
