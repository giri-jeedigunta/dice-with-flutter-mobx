// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DiceCounter on _DiceCounter, Store {
  Computed<int> _$totalCountComputed;

  @override
  int get totalCount =>
      (_$totalCountComputed ??= Computed<int>(() => super.totalCount)).value;

  final _$leftCountAtom = Atom(name: '_DiceCounter.leftCount');

  @override
  int get leftCount {
    _$leftCountAtom.context.enforceReadPolicy(_$leftCountAtom);
    _$leftCountAtom.reportObserved();
    return super.leftCount;
  }

  @override
  set leftCount(int value) {
    _$leftCountAtom.context.conditionallyRunInAction(() {
      super.leftCount = value;
      _$leftCountAtom.reportChanged();
    }, _$leftCountAtom, name: '${_$leftCountAtom.name}_set');
  }

  final _$rightCountAtom = Atom(name: '_DiceCounter.rightCount');

  @override
  int get rightCount {
    _$rightCountAtom.context.enforceReadPolicy(_$rightCountAtom);
    _$rightCountAtom.reportObserved();
    return super.rightCount;
  }

  @override
  set rightCount(int value) {
    _$rightCountAtom.context.conditionallyRunInAction(() {
      super.rightCount = value;
      _$rightCountAtom.reportChanged();
    }, _$rightCountAtom, name: '${_$rightCountAtom.name}_set');
  }

  final _$_DiceCounterActionController = ActionController(name: '_DiceCounter');

  @override
  void roll() {
    final _$actionInfo = _$_DiceCounterActionController.startAction();
    try {
      return super.roll();
    } finally {
      _$_DiceCounterActionController.endAction(_$actionInfo);
    }
  }
}
