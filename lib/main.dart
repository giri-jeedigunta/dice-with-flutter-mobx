import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'dice_counter.dart';

final dice = DiceCounter();

void main() {
  runApp(
    DiceBase(),
  );
}

class DiceBase extends StatelessWidget {
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
          child: DiceApp(),
        ),
      ),
    );
  }
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
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
                        Image.asset('images/dice${dice.diceLeft}.png'),
                  ),
                  onPressed: dice.changeDice,
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Observer(
                    builder: (_) =>
                        Image.asset('images/dice${dice.diceRight}.png'),
                  ),
                  onPressed: dice.changeDice,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Observer(
              builder: (_) => Text(
                'Total ${dice.diceTotal}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16.0,
                    fontFamily: 'Georgia'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
