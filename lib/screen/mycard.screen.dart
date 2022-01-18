import 'dart:ffi';

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          color: Colors.teal,
          child: Column(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('images/image.jpg'),
                radius: 60,
              ),
              informationText('Oussema AROUA', 36),
              informationText('Mobile Developer', 28)
            ],
          ),
        ),
      ),
    );
  }

  informationText(String contentText, double contentFontSize) {
    return Text(
      contentText,
      style: TextStyle(
          fontFamily: 'AdventPro',
          fontSize: contentFontSize,
          color: Colors.white,
          letterSpacing: 2),
    );
  }
}
