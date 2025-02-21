import 'package:flutter/material.dart';

class RowLayoutDemo extends StatefulWidget {
  const RowLayoutDemo({super.key});

  @override
  State<RowLayoutDemo> createState() => _RowLayoutDemoState();
}

class _RowLayoutDemoState extends State<RowLayoutDemo> {
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
        title: Text('Row Layout Demo'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          colorContainer(Colors.yellow),
          colorContainer(Colors.orange),
          colorContainer(Colors.purple),
          colorContainer(Colors.red),
          colorContainer(Colors.green),
          colorContainer(Colors.blue),
        ],
      ),
    );
  }
}
