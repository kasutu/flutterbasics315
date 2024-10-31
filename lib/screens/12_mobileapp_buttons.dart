import 'package:flutter/material.dart';

class MobileAppButtons extends StatelessWidget {
  const MobileAppButtons({super.key});

  void _showAlert(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Common App Buttons"),
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.green,
        actions: const [
          Icon(Icons.settings),
          Icon(Icons.notifications),
          Icon(Icons.person),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Text Button',
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () => _showAlert(context, 'Outlined Button Pressed',
                  'The outlined button was clicked'),
              child: const Text('Outlined Button'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.purple, // Button color
              ),
              onPressed: () => _showAlert(context, 'Filled Button Pressed',
                  'The filled button was clicked'),
              child: const Text('Filled Button'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.grey[300], // Text color
                elevation: 0, // Flat button effect
              ),
              onPressed: () => _showAlert(context, 'Elevated Button Pressed',
                  'The elevated button was clicked'),
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
