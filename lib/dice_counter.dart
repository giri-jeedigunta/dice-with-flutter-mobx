import 'dart:math';
import 'package:mobx/mobx.dart';

// Include generated file
part 'dice_counter.g.dart';

// This is the class used by rest of your codebase
class DiceCounter = _DiceCounter with _$DiceCounter;

// The store-class
// For detailed explanition refer: https://mobx.netlify.com/examples/dice
abstract class _DiceCounter with Store {
  @observable
  int left = Random().nextInt(6) + 1;

  @observable
  int right = Random().nextInt(6) + 1;

  @computed
  int get total => left + right;

  // We can have non Observables also as part of the MobX store
  // I created a simple counte to show that:
  int counter = 0;

  @action
  void roll() {
    left = Random().nextInt(6) + 1;
    right = Random().nextInt(6) + 1;

    // Non Oservables can also be used
    counter++;
    print('counter: $counter');
  }
}
