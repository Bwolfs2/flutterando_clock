// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppBase, Store {
  final _$darkModeAtom = Atom(name: '_AppBase.darkMode');

  @override
  bool get darkMode {
    _$darkModeAtom.context.enforceReadPolicy(_$darkModeAtom);
    _$darkModeAtom.reportObserved();
    return super.darkMode;
  }

  @override
  set darkMode(bool value) {
    _$darkModeAtom.context.conditionallyRunInAction(() {
      super.darkMode = value;
      _$darkModeAtom.reportChanged();
    }, _$darkModeAtom, name: '${_$darkModeAtom.name}_set');
  }

  final _$_AppBaseActionController = ActionController(name: '_AppBase');

  @override
  void changeTheme() {
    final _$actionInfo = _$_AppBaseActionController.startAction();
    try {
      return super.changeTheme();
    } finally {
      _$_AppBaseActionController.endAction(_$actionInfo);
    }
  }
}
