import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyPage createState() => new MyPage();
}

class MyPage extends State<MyApp> {
  final Random _random = Random();
  Color _color = Color.fromARGB(255, 255, 255, 255);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(255),
        _random.nextInt(255),
        _random.nextInt(255),
        _random.nextInt(255),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Tap anywhere on the screen",
            style: new TextStyle(fontFamily: 'Times new roman', fontSize: 20.0),
          ),
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.tag_faces),
                onPressed: () {},
              );
            },
          ),
        ),
        body: InkWell(
          onTap: changeColor,
          child: Container(
            color: _color,
            child: Center(
              child: Text(
                "Hey There",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50.0,
                  fontFamily: 'Times new roman',
                  fontStyle: FontStyle.normal,
                  color: Colors.deepPurple,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.deepPurple,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
