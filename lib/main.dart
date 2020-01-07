import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'dice_counter.dart';

final dice = DiceCounter();

void main() {
  runApp(
    DiceApp(),
  );
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text(
            ('Tap the dice !!!').toUpperCase(),
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16.0,
                fontFamily: 'Hind'),
          ),
        ),
        body: SafeArea(
          child: RollTheDice(),
        ),
      ),
    );
  }
}

class RollTheDice extends StatefulWidget {
  @override
  _RollTheDiceState createState() => _RollTheDiceState();
}

class _RollTheDiceState extends State<RollTheDice> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Observer(
                    builder: (_) =>
                        Image.asset('images/dice${dice.leftCount}.png'),
                  ),
                  onPressed: dice.roll,
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Observer(
                    builder: (_) =>
                        Image.asset('images/dice${dice.rightCount}.png'),
                  ),
                  onPressed: dice.roll,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Observer(
              builder: (_) => Text(
                'Total ${dice.totalCount}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 16.0,
                    fontFamily: 'Verdana'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
