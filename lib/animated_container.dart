import 'dart:ffi';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyAnimated());
}

class MyAnimated extends StatefulWidget {
  @override
  _MyAnimatedState createState() => _MyAnimatedState();
}

class _MyAnimatedState extends State<MyAnimated> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Animated'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {

              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              color: Color.fromARGB(255, random.nextInt(255),
                  random.nextInt(255), random.nextInt(255)),
              width: 50.0 + random.nextInt(100),
              height: 50.0 + random.nextInt(100),
            ),
          ),
        ),
      ),
    );
  }
}
