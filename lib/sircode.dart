import 'dart:math';

import 'package:flutter/material.dart';

class SirCode extends StatefulWidget {
  const SirCode({super.key});

  @override
  State<SirCode> createState() => _SirCodeState();
}
class _SirCodeState extends State<SirCode> {
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

      body: Center(
        child: Container(
          width: size,
          height: size,
          color: colors[random.nextInt(colors.length)],

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
            size = (size == 250 ? 100:250);
          });

        },child: Icon(Icons.add_circle),),
    );
  }
}