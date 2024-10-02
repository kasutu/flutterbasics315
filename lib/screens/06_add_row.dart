import 'package:flutter/material.dart';

class AddRow extends StatelessWidget {
  const AddRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
