import 'dart:math';
import 'package:mobx/mobx.dart';

// Include generated file
part 'dice_counter.g.dart';

// This is the class used by rest of your codebase
class DiceCounter = _DiceCounter with _$DiceCounter;

// The store-class
abstract class _DiceCounter with Store {
  @observable
  int diceLeft = Random().nextInt(6) + 1;

  @observable
  int diceRight = Random().nextInt(6) + 1;

  @computed
  int get diceTotal => diceLeft + diceRight;

  @action
  void changeDice() {
    diceLeft = Random().nextInt(6) + 1;
    diceRight = Random().nextInt(6) + 1;
  }
}
