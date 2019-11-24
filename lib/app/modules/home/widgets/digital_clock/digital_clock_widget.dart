import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterando_clock/app/modules/home/home_module.dart';
import 'package:intl/intl.dart';

import 'digital_clock_controller.dart';

class DigitalClockWidget extends StatelessWidget {
  final controller = HomeModule.to.bloc<DigitalClockController>();

  @override
  Widget build(BuildContext context) {
    var style = TextStyle(color: Theme.of(context).primaryColor);

    return Observer(
      builder: (_) => AutoSizeText(
        "${DateFormat("HH:mm:ss").format(controller.date)}",
        style: style.copyWith(
          fontSize: 80,
          fontWeight: FontWeight.bold,
        ),
        maxLines: 1,
      ),
    );
  }
}
