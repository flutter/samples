import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key, required this.text});
  final ValueNotifier<String> text;

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    // Initial value of the text box
    textController = TextEditingController.fromValue(TextEditingValue(
        text: widget.text.value,
        selection: TextSelection.collapsed(offset: widget.text.value.length)));
    // Report changes
    textController.addListener(_onTextControllerChange);
    // Listen to changes from the outside
    widget.text.addListener(_onTextStateChanged);
  }

  void _onTextControllerChange() {
    widget.text.value = textController.text;
  }

  void _onTextStateChanged() {
    textController.value = TextEditingValue(
      text: widget.text.value,
      selection: TextSelection.collapsed(offset: widget.text.value.length),
    );
  }

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
    widget.text.removeListener(_onTextStateChanged);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Text Field'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: TextField(
            controller: textController,
            maxLines: null,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Type something!',
            ),
          ),
        ),
      ),
    );
  }
}
