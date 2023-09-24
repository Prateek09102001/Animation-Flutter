import 'dart:math';

import 'package:flutter/material.dart';

class CircleColor extends StatefulWidget {
  const CircleColor({super.key});

  @override
  State<CircleColor> createState() => _CircleColorState();
}
class _CircleColorState extends State<CircleColor> {
  double size = 300.0;
  final List<String> images = [
    'assets/cars/download.jpg',
    'assets/cars/download (1).jpg',
    'assets/cars/download (2).jpg',
    'assets/cars/download (3).jpg',
    'assets/cars/download (4).jpg',
    'assets/cars/download (6).jpg',
    'assets/cars/download (7).jpg',
    'assets/cars/download (8).jpg',
    'assets/cars/download (9).jpg',
    'assets/cars/download (10).jpg',
    'assets/cars/download (11).jpg',
    'assets/cars/download (12).gif',
    'assets/cars/download (13).gif',
    'assets/cars/download (14).gif',
    'assets/cars/download (15).gif',
    'assets/cars/download (16).gif',
    'assets/cars/download (17).gif',
    'assets/cars/download (18).gif',
    'assets/cars/download (19).gif',
    'assets/cars/download (20).gif',
    'assets/cars/download (21).gif',
    // 'assets/cis.jpg',
    // 'assets/tornado.gif',
  ];

  Random random = new Random();
  int currentImageIndex = 0;

  // void changeImage() {
  //   setState(() {
  //     currentImageIndex = random.nextInt(images.length);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    List colors = [
      Colors.purple,
      Colors.purpleAccent,
      Colors.green,
      Colors.greenAccent,
      Colors.red,
      Colors.yellow,
      Colors.blue,
      Colors.deepOrange,
      Colors.amber,
      Colors.grey,
      Colors.black,
      Colors.pink,
      Colors.blueGrey,
      Colors.tealAccent,
      Colors.redAccent,
      Colors.yellowAccent,
      Colors.blueAccent,
      Colors.deepOrangeAccent,
      Colors.amberAccent,
      Colors.pinkAccent,
      // Colors.black.blue,
      // Colors.white.blue,
      // Colors.lightGreen.red,
    ];

    return Scaffold(
      backgroundColor: Colors.white24,
      body: Center(
        child: AnimatedContainer(
          width: size,
          height: size,
          duration: Duration(seconds: 3),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: colors[random.nextInt(colors.length)],
              image: DecorationImage(
                image: AssetImage(images[currentImageIndex]),
                 // fit: BoxFit.fill

              ),
              boxShadow:   [BoxShadow(
                  blurStyle: BlurStyle.solid,
                  // offset: Offset.fromDirection(5000),
                  blurRadius: 20,
                  color: colors[random.nextInt(colors.length)],
                  spreadRadius: 20
              ),
              ]
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: UniqueKey(),
        onPressed: (){
          setState(() {
            if(size == 300){size = 150;
            currentImageIndex = random.nextInt(images.length);}
            else{ size = 300;
            currentImageIndex = random.nextInt(images.length);}
            // size = (size == 100 ? 250:100);
          });
        },child: Icon(Icons.add_circle),),
    );
  }
}
