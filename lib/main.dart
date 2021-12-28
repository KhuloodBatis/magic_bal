import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BollPage(),
      ),
    );

class BollPage extends StatelessWidget {
  const BollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask Me Any thing'),
      ),
      body: Boll(),
    );
  }
}

class Boll extends StatefulWidget {
  const Boll({Key? key}) : super(key: key);

  @override
  _BollState createState() => _BollState();
}

class _BollState extends State<Boll> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        setState(() {
          ballNumber = Random().nextInt(5) + 1;
        });
      },
      child: Center(
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
