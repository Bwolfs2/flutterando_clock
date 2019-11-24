import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterando_clock/app/modules/home/home_module.dart';
import 'package:intl/intl.dart';

import 'clock_controller.dart';

class ClockWidget extends StatelessWidget {
  final controller = HomeModule.to.bloc<ClockController>();

  @override
  Widget build(BuildContext context) {
    var radius = MediaQuery.of(context).size.width * .8;
    return Observer(
        builder: (_) => Container(
              width: radius,
              height: radius,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 5),
                    borderRadius: BorderRadius.circular(radius)),
                child: Stack(
                  children: <Widget>[
                    Transform.rotate(
                      alignment: Alignment.bottomCenter,
                      angle: 20,
                      child: Container(
                        color: Colors.red,
                        height: 100,
                        width: 2,
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
