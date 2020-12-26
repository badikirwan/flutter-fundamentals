import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyStatefulWidget());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Center(
          child: Container(
              color: Colors.blue,
              width: 150,
              height: 50,
              child: Text(
                'Saya sedang belajar membuat aplikasi dengan flutter',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.amber,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              )),
        ),
      ),
    );
  }
}

// Container widget
class MyContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Container Widget"),
        ),
        body: Container(
          color: Colors.amber,
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.blue),
          ),
        ),
      ),
    );
  }
}

// Stateful widget
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My Stateful Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(number.toString()),
            RaisedButton(
              // ini menggunakan anonymous function.
              // syntax ananonymous function () {...}
              // anonymous function di gunakan jika function itu dipakai satu kali
              // atau hanya di pakai di class ini (tidak di gunakan di tempat lain).
              onPressed: () {
                setState(() {
                  number++;
                });
              },
              // ini tidak menggunakan anonymous function.
              //onPressed: addNumber,
              child: Text('Add Number'),
            )
          ],
        ),
      ),
    ));
  }

  int number = 0;

  void addNumber() {
    setState(() {
      number++;
    });
  }
}
