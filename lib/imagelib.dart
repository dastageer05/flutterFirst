import 'package:flutter/material.dart';

class ImageTest extends StatefulWidget {
  const ImageTest({super.key});

  @override
  State<ImageTest> createState() => _ImageTestState();
}

class _ImageTestState extends State<ImageTest> {
  Widget imageWithText(String text, String imagePath) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(text),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.amberAccent,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              imageWithText('Image 1', 'images/image1.webp'),
              imageWithText('Image 2', 'images/image2.webp'),
              imageWithText('Image 3', 'images/image3.webp'),
              imageWithText('Image 4', 'images/image1.webp'),
              imageWithText('Image 5', 'images/image2.webp'),
              imageWithText('Image 6', 'images/image3.webp'),
            ],
          ),
        ),
      ),
    );
  }
}
