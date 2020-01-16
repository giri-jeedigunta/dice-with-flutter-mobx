import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'dice_counter.dart';

final DiceCounter diceCounter = DiceCounter();

void main() {
  runApp(
    DiceExample(),
  );
}

class DiceExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
            backgroundColor: Colors.amberAccent,
            title: Text(
              'Tap the dice !!!'.toUpperCase(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Hind'),
            ),
          ),
          body: SafeArea(
            child: DiceView(),
          ),
        ),
      );
}

class DiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: const <Widget>[
                DiceButton(dicePosition: 'left'),
                DiceButton(dicePosition: 'right'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Observer(
                builder: (_) => Text(
                  'Total ${diceCounter.total}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 16,
                      fontFamily: 'Verdana'),
                ),
              ),
            ),
          ],
        ),
      );
}

class DiceButton extends StatelessWidget {
  const DiceButton({this.dicePosition});

  final String dicePosition;

  @override
  Widget build(BuildContext context) => Expanded(
      child: FlatButton(
        child: Observer(
          builder: (_) => Image.asset('images/dice${dicePosition=='left'?diceCounter.left:diceCounter.right}.png'),
        ),
        onPressed: diceCounter.roll,
      ),
    );
}
