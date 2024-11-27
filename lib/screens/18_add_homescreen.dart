import 'package:flutter/material.dart';

class AddHomescreen extends StatelessWidget {
  const AddHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.lightGreen[100],
        iconTheme: const IconThemeData(color: Colors.red),
        actions: const [
          Icon(Icons.settings),
          Icon(Icons.notifications),
          Icon(Icons.person),
        ],
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 300,
              width: 300,
              child: const Card(
                elevation: 10,
                child: Center(
                  child: Text(
                    "Card 1",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 300,
              width: 300,
              child: const Card(
                elevation: 10,
                child: Center(
                  child: Text(
                    "Card 2",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 300,
              width: 300,
              child: const Card(
                elevation: 10,
                child: Center(
                  child: Text(
                    "Card 3",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work),
          label: "Work",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.code),
          label: "Code",
        )
      ]),
    );
  }
}
