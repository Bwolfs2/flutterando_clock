// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clock_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClockController on _ClockBase, Store {
  final _$minutesAngleAtom = Atom(name: '_ClockBase.minutesAngle');

  @override
  int get minutesAngle {
    _$minutesAngleAtom.context.enforceReadPolicy(_$minutesAngleAtom);
    _$minutesAngleAtom.reportObserved();
    return super.minutesAngle;
  }

  @override
  set minutesAngle(int value) {
    _$minutesAngleAtom.context.conditionallyRunInAction(() {
      super.minutesAngle = value;
      _$minutesAngleAtom.reportChanged();
    }, _$minutesAngleAtom, name: '${_$minutesAngleAtom.name}_set');
  }

  final _$secondsAngleAtom = Atom(name: '_ClockBase.secondsAngle');

  @override
  int get secondsAngle {
    _$secondsAngleAtom.context.enforceReadPolicy(_$secondsAngleAtom);
    _$secondsAngleAtom.reportObserved();
    return super.secondsAngle;
  }

  @override
  set secondsAngle(int value) {
    _$secondsAngleAtom.context.conditionallyRunInAction(() {
      super.secondsAngle = value;
      _$secondsAngleAtom.reportChanged();
    }, _$secondsAngleAtom, name: '${_$secondsAngleAtom.name}_set');
  }

  final _$hoursAngleAtom = Atom(name: '_ClockBase.hoursAngle');

  @override
  int get hoursAngle {
    _$hoursAngleAtom.context.enforceReadPolicy(_$hoursAngleAtom);
    _$hoursAngleAtom.reportObserved();
    return super.hoursAngle;
  }

  @override
  set hoursAngle(int value) {
    _$hoursAngleAtom.context.conditionallyRunInAction(() {
      super.hoursAngle = value;
      _$hoursAngleAtom.reportChanged();
    }, _$hoursAngleAtom, name: '${_$hoursAngleAtom.name}_set');
  }
}
