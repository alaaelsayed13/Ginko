import 'package:flutter/material.dart';
import 'package:ginko/patientinfo.dart';
import 'package:ginko/thirdscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ThirdScreen(),
    );
  }
}

