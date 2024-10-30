import 'package:flutter/material.dart';

class AddBottomnavigation extends StatelessWidget {
  const AddBottomnavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text('Home Screen'),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'People',
          ),
        ],
      ),
    );
  }
}
