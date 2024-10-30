import 'package:flutter/material.dart';

class AddAppBar extends StatelessWidget {
  const AddAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Screen"),
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.settings),
            Icon(Icons.notifications),
            Icon(Icons.person),
          ],
        ),
        body: const Text("Home Screen"));
  }
}
