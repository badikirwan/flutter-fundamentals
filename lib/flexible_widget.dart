import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyFlexibleWidget());
}

class MyFlexibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Flexible'),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.amber,
                        )
                    ),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.limeAccent,
                        )
                    ),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          color: Colors.cyanAccent,
                        )
                    ),
                  ],
                )
            ),
            Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.red,
                )
            ),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.blue,
                )
            )
          ],
        ),
      ),
    );
  }
}
