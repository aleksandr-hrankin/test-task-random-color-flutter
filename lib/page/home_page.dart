import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor;

  @override
  void initState() {
    _backgroundColor = Colors.indigoAccent;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _backgroundColor =
          Colors.primaries[new Random().nextInt(Colors.primaries.length)];
        });
      },
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'IndieFlower'),
        home: Scaffold(
          backgroundColor: _backgroundColor,
          appBar: AppBar(
            title: Text(
              'Random color',
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/imgs/pig.png'),
                ),
                Text(
                  'Hey there',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}