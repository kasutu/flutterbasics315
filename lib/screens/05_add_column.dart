import 'package:flutter/material.dart';

class AddColumn extends StatelessWidget {
  const AddColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.green,
            height: 100,
            width: 100,
          ),
          Container(
            color: Colors.green,
            height: 100,
            width: 100,
          ),
          Container(
            color: Colors.green,
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
