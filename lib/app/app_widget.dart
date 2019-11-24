import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterando_clock/app/app_module.dart';
import 'package:flutterando_clock/app/modules/home/home_module.dart';

import 'app_controller.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = AppModule.to.bloc<AppController>();
    return Observer(
      builder: (_) => MaterialApp(
        title: 'Flutter Slidy',
        themeMode: controller.darkMode ? ThemeMode.dark : ThemeMode.light,
        theme: ThemeData(
            primaryColor: Color(0xff1A1A1A),
            backgroundColor: Color(0xffFFFFFF),
            accentColor: Color(0xffA72D1E)),
        darkTheme: ThemeData(
            backgroundColor: Color(0xff171717),
            primaryColor: Colors.white,
            accentColor: Color(0xffA72D1E)),
        home: HomeModule(),
      ),
    );
  }
}
