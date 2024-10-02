import 'package:flutter/material.dart';
import 'package:flutterbasics315/screens/01_add_dartfile.dart';
import 'package:flutterbasics315/screens/03_add_text.dart';
import 'package:flutterbasics315/screens/04_add_scaffold.dart';
import 'package:flutterbasics315/screens/05_add_column.dart';
import 'package:flutterbasics315/screens/06_add_row.dart';
import 'package:flutterbasics315/screens/07_add_columnrow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AddRow(),
      debugShowCheckedModeBanner: false,
    );
  }
}
