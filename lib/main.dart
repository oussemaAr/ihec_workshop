import 'package:flutter/material.dart';
import 'package:ihec_workshop/screen/mycard.screen.dart';
import 'package:ihec_workshop/screen/wonder.screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/my_card': (context) => MyCard(),
        '/': (context) => WonderScreen()
      },
    ),
  );
}
