import 'package:flutter/material.dart';

class ShowData extends StatelessWidget {
  const ShowData({required this.fname, required this.pass, Key? key})
      : super(key: key);

  final String fname;
  final String pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (fname == "sycs" && pass == "1234") {
                return Text("Authentication: $fname $pass");
              } else {
                return Text("Invalid");
              }
            },
          ),
        ),
      ),
    );
  }
}
