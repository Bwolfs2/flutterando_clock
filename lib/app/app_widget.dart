import 'package:flutter/material.dart';
import 'package:flutterando_clock/app/modules/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primaryColor: Color(0xff1A1A1A),     
        backgroundColor: Color(0xffF9F9F9),
        accentColor: Color(0xffA72D1E)
      ),
      darkTheme: ThemeData(
        backgroundColor: Color(0xff141414),
        
        primaryColor: Colors.white,   
        accentColor: Color(0xffA72D1E)
      ),
      home: HomeModule(),
    );
  }
}