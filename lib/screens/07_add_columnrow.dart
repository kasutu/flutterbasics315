import 'package:flutter/material.dart';

class AddColumnRow extends StatelessWidget {
  const AddColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 30,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 10,
            children: [
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
                child: const Center(
                  child: Text('1',
                      style: TextStyle(color: Colors.black, fontSize: 50)),
                ),
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
                child: const Center(
                  child: Text('2',
                      style: TextStyle(color: Colors.black, fontSize: 50)),
                ),
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
                child: const Center(
                  child: Text('3',
                      style: TextStyle(color: Colors.black, fontSize: 50)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
                child: const Center(
                  child: Text('1',
                      style: TextStyle(color: Colors.black, fontSize: 50)),
                ),
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
                child: const Center(
                  child: Text('2',
                      style: TextStyle(color: Colors.black, fontSize: 50)),
                ),
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
                child: const Center(
                  child: Text('3',
                      style: TextStyle(color: Colors.black, fontSize: 50)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
