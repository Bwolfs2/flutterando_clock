import 'package:flutterando_clock/app/app_module.dart';
import 'package:flutterando_clock/app/modules/home/widgets/digital_clock/digital_clock_controller.dart';
import 'package:flutterando_clock/app/modules/home/widgets/clock/clock_controller.dart';
import 'package:flutterando_clock/app/modules/home/home_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutterando_clock/app/modules/home/home_page.dart';
import 'package:flutterando_clock/app/modules/shared/services/clock_service.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => DigitalClockController(AppModule.to.get<ClockService>())),
        Bloc((i) => ClockController(AppModule.to.get<ClockService>())),
        Bloc((i) => HomeController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}
