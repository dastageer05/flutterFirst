
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          DisplayOne(hint: "Enter First Number"),
          SizedBox(height: 30,),
          DisplayOne(hint: "Enter Second Number"),
          const Text(
            "0",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed:() {},
                child: const Icon(CupertinoIcons.add)
              ),
              FloatingActionButton(
                  onPressed:() {},
                  child: const Icon(CupertinoIcons.minus)
              ),
              FloatingActionButton(
                  onPressed:() {},
                  child: const Icon(CupertinoIcons.multiply)
              ),
              FloatingActionButton(
                  onPressed:() {},
                  child: const Icon(CupertinoIcons.divide)
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DisplayOne extends StatelessWidget {
  const DisplayOne({
    super.key,
    this.hint = "Enter a number"
  });

  final String? hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      autofocus: true,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        border:  OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.white
        )
      ),
    );
  }
}
