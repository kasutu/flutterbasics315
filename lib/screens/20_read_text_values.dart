import 'package:flutter/material.dart';

class ReadTextValues extends StatefulWidget {
  const ReadTextValues({super.key});

  @override
  State<ReadTextValues> createState() => _ReadTextValuesState();
}

class _ReadTextValuesState extends State<ReadTextValues> {
  final textControllear = TextEditingController();
  String textValue = 'Text will show here';

  setValues(String newValue) {
    setState(() {
      textValue = textControllear.text;
    });
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
                Text(
                  textValue,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  controller: textControllear,
                  decoration: const InputDecoration(
                    labelText: 'Enter text here',
                  ),
                  onChanged: setValues,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
