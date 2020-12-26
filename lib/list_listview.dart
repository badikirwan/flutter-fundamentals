import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyListView());
}

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  int counter = 0;
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My List View'),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text('Add Data'),
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        'Data ke-' + counter.toString(),
                        style: TextStyle(fontSize: 20),
                      ));
                      counter++;
                    });
                  },
                ),
                RaisedButton(
                    child: Text('Remove Data'),
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    })
              ],
            ),
            Column(
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
