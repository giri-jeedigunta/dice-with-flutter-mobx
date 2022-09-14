import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'dice_counter.dart';

enum DicePosition { left, right }

final DiceCounter diceCounter = DiceCounter();

void main() => runApp(DiceExample());

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
                DiceButtonWidget(dicePositionSelected: DicePosition.left),
                DiceButtonWidget(dicePositionSelected: DicePosition.right),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Observer(builder: (_) {
                return Text(
                  'Total ${diceCounter.total}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 16,
                      fontFamily: 'Verdana'),
                );
              }),
            ),
          ],
        ),
      );
}

class DiceButtonWidget extends StatelessWidget {
  const DiceButtonWidget({required this.dicePositionSelected});

  final DicePosition dicePositionSelected;

  @override
  Widget build(BuildContext context) => Expanded(
        child: TextButton(
          child: Observer(builder: (_) {
            return Image.asset(
                'images/dice${dicePositionSelected == DicePosition.left ? diceCounter.left : diceCounter.right}.png');
          }),
          onPressed: diceCounter.roll,
        ),
      );
}
