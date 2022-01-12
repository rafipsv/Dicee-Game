import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Center(
              child: Text(
                "Dicee App",
              ),
            ),
          ),
          body: DicePage(),
        ),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int upperleft = 1;
  int upperright = 2;
  int downleft = 4;
  int downright = 3;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          "Click for Play Dicee Game",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Icon(
          Icons.arrow_downward_sharp,
          color: Colors.white,
          size: 30,
        ),
        SizedBox(
          height: 25,
        ),
        Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      upperleft = Random().nextInt(6) + 1;
                      downright = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset(
                    "images/dice$upperleft.png",
                    height: 100,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      upperright = Random().nextInt(6) + 1;
                      downleft = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset(
                    "images/dice$upperright.png",
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      downleft = Random().nextInt(6) + 1;
                      upperright = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset(
                    "images/dice$downleft.png",
                    height: 100,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      downright = Random().nextInt(6) + 1;
                      upperleft = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset(
                    "images/dice$downright.png",
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
