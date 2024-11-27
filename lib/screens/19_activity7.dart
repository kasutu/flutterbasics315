import 'package:flutter/material.dart';
import 'package:flutterbasics315/screens/appbar_state.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  int navIndex = 0;

  void onTap(int index) {
    setState(() {
      navIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> cardTitles = ["Card 1", "Card 2", "Card 3"];

    return Scaffold(
      appBar: AppBar(
        title: Text(AppbarState.getAppBarTitle(navIndex)),
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
          child: Column(children: <Widget>[
        ...cardTitles.map((title) => Expanded(
              child: GestureDetector(
                child: Container(
                  height: 300,
                  width: 300,
                  child: Card(
                    elevation: 10,
                    child: Center(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )),
        Text(AppbarState.getAppBarTitle(navIndex))
      ])),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: "Home".toUpperCase(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.work),
            label: "Work".toUpperCase(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.code),
            label: "Code".toUpperCase(),
          ),
        ],
        onTap: onTap,
        enableFeedback: true,
        showSelectedLabels: true,
        currentIndex: navIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
