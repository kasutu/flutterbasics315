import 'package:flutter/material.dart';

class AddTextformfield extends StatelessWidget {
  const AddTextformfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Username'),
            hintText: 'Please provide your valid Username',
            suffix: Icon(
              Icons.email,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
