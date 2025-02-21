import 'package:flutter/material.dart';
import '/ColumnLayout.dart';
import '/GridLayout.dart';
import '/RowLayout.dart';

class DiffLayout extends StatefulWidget {
  const DiffLayout({super.key});

  @override
  State<DiffLayout> createState() => _DiffLayoutState();
}

class _DiffLayoutState extends State<DiffLayout> {
  Widget customListTile(String text, Widget page) {
    return ListTile(
      title: Text(text),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Demo'),
      ),
      body: ListView(
        children: [
          customListTile('Column Layout', ColumnLayoutDemo()),
          customListTile('Row Layout', RowLayoutDemo()),
          customListTile('Grid Layout', GridLayoutDemo()),
        ],
      ),
    );
  }
}
