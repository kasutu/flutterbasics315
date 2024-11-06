import 'package:flutter/material.dart';

class AddSnackbar extends StatelessWidget {
  const AddSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('This is a snackbar'),
                duration: Duration(seconds: 3),
              ),
            );
          },
          child: const Text('Show Snackbar'),
        ),
      ),
    );
  }
}
