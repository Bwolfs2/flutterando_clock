import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppBase with _$AppController;

abstract class _AppBase with Store {
  @observable
  bool darkMode = false;

  @action
  void changeTheme() {
    darkMode = !darkMode;
  }
}
