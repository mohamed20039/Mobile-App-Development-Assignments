import 'package:assignment_4/Screens/calculator.dart';
import 'package:assignment_4/Screens/home_screen.dart';
import 'package:assignment_4/Screens/tabBarScreen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabScreen(),
    );
  }
}
