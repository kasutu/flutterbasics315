import 'package:flutter/material.dart';

class AddImage extends StatelessWidget {
  const AddImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/images/login.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
