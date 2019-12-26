// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DiceCounter on _DiceCounter, Store {
  Computed<int> _$diceTotalComputed;

  @override
  int get diceTotal =>
      (_$diceTotalComputed ??= Computed<int>(() => super.diceTotal)).value;

  final _$diceLeftAtom = Atom(name: '_DiceCounter.diceLeft');

  @override
  int get diceLeft {
    _$diceLeftAtom.context.enforceReadPolicy(_$diceLeftAtom);
    _$diceLeftAtom.reportObserved();
    return super.diceLeft;
  }

  @override
  set diceLeft(int value) {
    _$diceLeftAtom.context.conditionallyRunInAction(() {
      super.diceLeft = value;
      _$diceLeftAtom.reportChanged();
    }, _$diceLeftAtom, name: '${_$diceLeftAtom.name}_set');
  }

  final _$diceRightAtom = Atom(name: '_DiceCounter.diceRight');

  @override
  int get diceRight {
    _$diceRightAtom.context.enforceReadPolicy(_$diceRightAtom);
    _$diceRightAtom.reportObserved();
    return super.diceRight;
  }

  @override
  set diceRight(int value) {
    _$diceRightAtom.context.conditionallyRunInAction(() {
      super.diceRight = value;
      _$diceRightAtom.reportChanged();
    }, _$diceRightAtom, name: '${_$diceRightAtom.name}_set');
  }

  final _$_DiceCounterActionController = ActionController(name: '_DiceCounter');

  @override
  void changeDice() {
    final _$actionInfo = _$_DiceCounterActionController.startAction();
    try {
      return super.changeDice();
    } finally {
      _$_DiceCounterActionController.endAction(_$actionInfo);
    }
  }
}
