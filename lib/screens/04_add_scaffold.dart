import 'package:flutter/material.dart';

class AddScaffold extends StatelessWidget {
  const AddScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: 300,
        color: Colors.deepPurple,
        child: const Center(
          child: Text(
            'Welcome to ccs 2800 class.',
            style: TextStyle(
              fontSize: 30,
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
