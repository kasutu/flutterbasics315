import 'package:flutter/material.dart';

class CompareTextValues extends StatefulWidget {
  const CompareTextValues({super.key});

  @override
  State<CompareTextValues> createState() => _CompareTextValuesState();
}

class _CompareTextValuesState extends State<CompareTextValues> {
  final controller = TextEditingController();
  Text textWidget = const Text('Mewp',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ));

  showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
    ));
  }

  onCompare() {
    if (textWidget.data != controller.text) {
      showSnackBar('Expected ${textWidget.data} but got ${controller.text}');
      return;
    }

    showSnackBar('Correct bro!');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              spacing: 30,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textWidget,
                TextFormField(
                  controller: controller,
                  decoration: const InputDecoration(
                    labelText: 'Enter text here',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                      onPressed: onCompare,
                      child: const Text(
                        'Compare',
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
