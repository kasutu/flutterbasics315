// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CompareUserInput extends StatefulWidget {
  const CompareUserInput({super.key});

  @override
  State<CompareUserInput> createState() => _CompareUserInputState();
}

class _CompareUserInputState extends State<CompareUserInput> {
  final controllerA = TextEditingController();
  final controllerB = TextEditingController();

  onCompare() {
    if (controllerA.text == controllerB.text) {
      showSnackBar('Its just same bro');
      return;
    }

    int a = int.parse(controllerA.text);
    int b = int.parse(controllerB.text);

    showSnackBar('Correct bro: ${a > b ? a : b} is greater');
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
                numberInput(controller: controllerA),
                numberInput(controller: controllerB),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: onCompare,
                    child: const Text(
                      'Compare',
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
    ));
  }

  numberInput({required TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: const InputDecoration(
        labelText: 'Enter number here',
        border: OutlineInputBorder(),
      ),
    );
  }
}
