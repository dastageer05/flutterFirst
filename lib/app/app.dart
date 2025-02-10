import 'package:firstflutter/views/home_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter first",
        theme: ThemeData(
          primarySwatch: Colors.amber
        ),
        home: HomeView()
    );
  }
}