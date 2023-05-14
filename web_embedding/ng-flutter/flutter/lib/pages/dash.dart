import 'package:flutter/material.dart';

class DashDemo extends StatefulWidget {
  final ValueNotifier<String> text;

  const DashDemo({super.key, required this.text});

  @override
  State<DashDemo> createState() => _DashDemoState();
}

class _DashDemoState extends State<DashDemo> {
  final double textFieldHeight = 80;
  final Color colorPrimary = Colors.blue.shade700;
  late TextEditingController textController;

  int totalCharCount = 0;

  @override
  void initState() {
    super.initState();
    // Initial value of the text box
    totalCharCount = widget.text.value.length;
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
    setState(() {
      totalCharCount = textController.text.length;
    });
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

  void _handleClear() {
    textController.value = TextEditingValue(
      text: '',
      selection: TextSelection.collapsed(offset: widget.text.value.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: colorPrimary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'COUNT WITH DASH!',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  // Bordered dash avatar
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: ClipOval(
                      child: Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(2),
                          child: ClipOval(
                            child: Container(
                                color: colorPrimary,
                                padding: const EdgeInsets.all(2),
                                child: const CircleAvatar(
                                  radius: 45,
                                  backgroundColor: Colors.white,
                                  foregroundImage:
                                      AssetImage('assets/dash.png'),
                                )),
                          )),
                    ),
                  ),
                  Text(
                    '$totalCharCount',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    autofocus: true,
                    controller: textController,
                    maxLines: 1,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Type something!',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Ink(
                    decoration: ShapeDecoration(
                      color: colorPrimary,
                      shape: const CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.refresh),
                      color: Colors.white,
                      onPressed: _handleClear,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
