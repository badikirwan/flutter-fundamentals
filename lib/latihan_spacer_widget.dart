import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MySpacerWidget());
}

class MySpacerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Spacer Widget'),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Spacer(flex: 1,),
              Container(width: 80, height: 80, color: Colors.orange,),
              Spacer(flex: 1,),
              Container(width: 80, height: 80, color: Colors.blue,),
              Spacer(flex: 1,),
              Container(width: 80, height: 80, color: Colors.green,),
              Spacer(flex: 1,)
            ],
          ),
        ),
      ),
    );
  }
}
