import 'package:design_2/widgets/units.dart';
import 'package:flutter/material.dart';
// import 'package:design_2/widgets/unit2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Units(),
        ),
      ),
    );
  }
}
