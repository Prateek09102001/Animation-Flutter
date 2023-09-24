import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new_animation/animatedswitcher.dart';
import 'package:new_animation/animationimage.dart';
import 'package:new_animation/circlecolor.dart';
import 'package:new_animation/listview.dart';

void main()
{
  runApp(Update());
}

class Update extends StatelessWidget {
  const Update({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(backgroundColor: Colors.grey),
      home: CircleColor(),
      // themeAnimationDuration: Duration(seconds: 10),
    );
  }
}

class FulUpdate extends StatefulWidget {
  const FulUpdate({super.key});

  @override
  State<FulUpdate> createState() => _FulUpdateState();
}
//Circle color
class _FulUpdateState extends State<FulUpdate> {
  double size = 100.0;
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
    Random random = new Random();

    return Scaffold(
      backgroundColor: Colors.white24,
      body: Center(
        child: AnimatedContainer(
          width: size,
          height: size,
          duration: Duration(seconds: 3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
             color: colors[random.nextInt(colors.length)],
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
            if(size == 100){
              size = 250;
            colors[random.nextInt(colors.length)];}
            else{ size = 100;
            colors[random.nextInt(colors.length)];}
            // size = (size == 250 ? 100:250);
          });

          },child: Icon(Icons.add_circle),),
    );
  }
}
