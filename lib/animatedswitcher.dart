import 'dart:math';
import 'package:flutter/material.dart';


class LAnimatedSwitcher extends StatefulWidget {
  const LAnimatedSwitcher({super.key});

  @override
  State<LAnimatedSwitcher> createState() => _LAnimatedSwitcherState();
}

class _LAnimatedSwitcherState extends State<LAnimatedSwitcher> {
  bool switchChild = true;
  @override
  Widget build(BuildContext context) {
    List colors = [
      Colors.purple,
      Colors.green,
      Colors.red,
      Colors.yellow,
      Colors.blue,
      Colors.deepOrange,
      Colors.amber,
      Colors.grey,
      Colors.pinkAccent,
      Colors.black,
      Colors.pink,
      Colors.blueGrey,
      Colors.tealAccent
    ];
    Random random = new Random();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: AnimatedSwitcher(
            duration: Duration(seconds: 5),
            transitionBuilder: (Widget child, Animation<double> animation)
            {
              return ScaleTransition(child: child,scale: animation);
            },
            child: switchChild
            ? Container(
              key: UniqueKey(),
              height: 100,
              width: 100,

              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                color: colors[random.nextInt(colors.length)],
              ) ,
            )
                :Container(
              key: UniqueKey(),
              height: 250.0,
              width: 250.0,
              color: colors[random.nextInt(colors.length)],
            ),
          ),),
          ElevatedButton(
              onPressed: (){
                setState(() {
                  switchChild = !switchChild;
                });
                
              }, child: Text('Click'),
          style: const ButtonStyle(
            splashFactory: NoSplash.splashFactory,
            //fixedSize: MaterialStatePropertyAll(Size.fromRadius(3)),
          ),)
          
        ],
      )
    );
  }
}
