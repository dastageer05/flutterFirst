
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int x = 0;
  int y =0;
  num z=0;

  final displayOneController = TextEditingController();
  final displayTwoController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    displayOneController.text = x.toString();
    displayTwoController.text = y.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          CalculatorDisplay(hint: "Enter First Number", controller: displayOneController),
          SizedBox(height: 30,),
          CalculatorDisplay(hint: "Enter Second Number", controller: displayTwoController),
           Text(
            z.toString(),
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
                onPressed:() {
                  setState(() {
                    z = num.tryParse(displayOneController.text)! + num.tryParse(displayTwoController.text)!;
                  });
                },
                child: const Icon(CupertinoIcons.add)
              ),
              FloatingActionButton(
                  onPressed:() {
                    setState(() {
                      z = num.tryParse(displayOneController.text)! - num.tryParse(displayTwoController.text)!;
                    });
                  },
                  child: const Icon(CupertinoIcons.minus)
              ),
              FloatingActionButton(
                  onPressed:() {
                    setState(() {
                      z = num.tryParse(displayOneController.text)! * num.tryParse(displayTwoController.text)!;
                    });
                  },
                  child: const Icon(CupertinoIcons.multiply)
              ),
              FloatingActionButton(
                  onPressed:() {
                    setState(() {
                      z = num.tryParse(displayOneController.text)! / num.tryParse(displayTwoController.text)!;
                    });
                  },
                  child: const Icon(CupertinoIcons.divide)
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton.extended(
              onPressed:() {
                setState(() {
                  displayOneController.clear();
                  displayTwoController.clear();
                  x =0;
                  y=0;
                  z = 0;
                });
              },
              label: const Text("Clear")
          ),
        ],
      ),
    );
  }
}

class CalculatorDisplay extends StatelessWidget {
  const CalculatorDisplay({
    super.key,
    this.hint = "Enter a number",
    required this.controller,
  });

  final String? hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
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
