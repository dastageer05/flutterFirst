import 'package:flutter/material.dart';

class ColumnLayoutDemo extends StatefulWidget {
  const ColumnLayoutDemo({super.key});

  @override
  State<ColumnLayoutDemo> createState() => _ColumnLayoutDemoState();
}

class _ColumnLayoutDemoState extends State<ColumnLayoutDemo> {
  Widget colorContainer(Color color) {
    return Container(
      color: color,
      width: 100,
      height: 100,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Layout Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          colorContainer(Colors.red),
          colorContainer(Colors.green),
          colorContainer(Colors.blue),
          colorContainer(Colors.yellow),
          colorContainer(Colors.orange),
          colorContainer(Colors.purple),
        ],
      ),
    );
  }
}
