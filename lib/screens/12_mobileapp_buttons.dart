import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Common App Buttons"),
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.lightGreen[100],
        actions: const [
          Icon(Icons.settings),
          Icon(Icons.notifications),
          Icon(Icons.person),
        ],
      ),
      body: Center(
        // Added Center widget here
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Text Button',
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                // Add your functionality here
              },
              child: const Text('Outlined Button'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.purple, // Button color
              ),
              onPressed: () {
                // Add your functionality here
              },
              child: const Text('Filled Button'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.grey[300], // Text color
                elevation: 0, // Flat button effect
              ),
              onPressed: () {
                // Add your functionality here
              },
              child: const Text('Elevated Button'),
            ),
          ],
        ),
      ),
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
