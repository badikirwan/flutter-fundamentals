import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyImageWidget());
}

class MyImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Image Widget',),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(5),
            child: Image(image: NetworkImage('https://dart.dev/assets/shared/dart-logo-for-shares.png?2')),
          ),
        ),
      ),
    );
  }
}
