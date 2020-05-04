import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blueAccent,
          ),
          body: MagicBall(),
          backgroundColor: Colors.blue,
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ball_num = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ball_num = Random().nextInt(5) + 1;
          });
        },
        highlightColor: Colors.white,
        splashColor: Colors.pink.shade100,
        child: Image.asset('images/ball$ball_num.png'),
      ),
    );
  }
}
