import 'package:flutter/material.dart';
import 'package:flutterbasics315/screens/16_add_textformfield.dart';

class AddNavigation extends StatelessWidget {
  const AddNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.arrow_right),
          label: const Text('Next'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (builder) => const AddTextformfield(),
              ),
            );
          },
        ),
      ),
    );
  }
}
