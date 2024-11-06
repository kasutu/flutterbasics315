import 'package:flutter/material.dart';
import 'package:flutterbasics315/screens/12_mobileapp_buttons.dart';
import 'package:flutterbasics315/screens/13_add_image.dart';
import 'package:flutterbasics315/screens/14_add_card.dart';
import 'package:flutterbasics315/screens/15_add_snackbar.dart';
import 'package:flutterbasics315/screens/16_add_textformfield.dart';
import 'package:flutterbasics315/screens/17_add_navigation.dart';

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
      home: const AddNavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
