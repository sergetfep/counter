// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_escapes

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tap \"- \" to decrement',
                style: TextStyle(fontSize: 15),
              ),
              CounterWidget(),
              Text(
                'Tap \"+ \" to increment',
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 50;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Spacer(flex: 24),
      Ink(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(width: 1, color: Colors.white),
          ),
          color: Colors.blue,
        ),
        child: IconButton(
          onPressed: () {
            setState(() {
              _counter--;
            });
          },
          icon: Icon(Icons.remove),
          tooltip: 'Decrease by one',
          splashColor: Colors.greenAccent,
        ),
      ),
      Spacer(),
      Text(_counter.toString(),
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          )),
      Spacer(),
      Ink(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(width: 1, color: Colors.white),
          ),
          color: Colors.blue,
        ),
        child: IconButton(
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
          icon: Icon(Icons.add),
          tooltip: 'Increase by one',
          splashColor: Colors.redAccent,
        ),
      ),
      Spacer(flex: 24),
    ]);
  }
}
