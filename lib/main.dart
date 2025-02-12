import 'package:flutter/material.dart';
import 'package:flutter_application_1/practice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ImageTest(),
    );
  }
}
