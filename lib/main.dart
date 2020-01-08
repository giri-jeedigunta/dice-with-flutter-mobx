import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'dice_counter.dart';

final diceCounter = DiceCounter();

void main() {
  runApp(
    DiceExample(),
  );
}

class DiceExample extends StatelessWidget {
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
          child: DiceView(),
        ),
      ),
    );
  }
}

class DiceView extends StatelessWidget {
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
                        Image.asset('images/dice${diceCounter.left}.png'),
                  ),
                  onPressed: diceCounter.roll,
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Observer(
                    builder: (_) =>
                        Image.asset('images/dice${diceCounter.right}.png'),
                  ),
                  onPressed: diceCounter.roll,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Observer(
              builder: (_) => Text(
                'Total ${diceCounter.total}',
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
