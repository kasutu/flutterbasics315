import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Image.asset(
            'assets/images/login.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
