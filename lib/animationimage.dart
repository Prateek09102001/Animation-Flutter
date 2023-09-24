import 'package:flutter/material.dart';
import 'dart:math';

class ImageChangeScreen extends StatefulWidget {
  @override
  _ImageChangeScreenState createState() => _ImageChangeScreenState();
}

class _ImageChangeScreenState extends State<ImageChangeScreen> {
  final List<String> imagePaths = [
    'assets/cis.jpg',
    'assets/tornado.gif',

    // Add your image paths here
  ];

  final Random random = Random();
  int currentImageIndex = 0;

  void changeImage() {
    setState(() {
      currentImageIndex = random.nextInt(imagePaths.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Changer'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imagePaths[currentImageIndex]),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeImage,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
