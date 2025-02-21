import 'package:flutter/material.dart';

class GridLayoutDemo extends StatefulWidget {
  const GridLayoutDemo({super.key});

  @override
  State<GridLayoutDemo> createState() => _GridLayoutDemoState();
}

class _GridLayoutDemoState extends State<GridLayoutDemo> {
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
        title: Text('Grid Layout Demo'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
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
