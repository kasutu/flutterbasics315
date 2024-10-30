import 'package:flutter/material.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text('Home Screen'),
      bottomSheet: Container(
        height: 50,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.settings),
            Icon(Icons.notifications),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}
