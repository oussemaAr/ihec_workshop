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
              informationText('Mobile Developer', 28),
              informationCard('oussamaaroua@orange.com', Icons.email),
              informationCard('50 000 000', Icons.phone),
              ElevatedButton(
                onPressed: () {
                  print('MESSAGE');
                },
                child: Icon(
                  Icons.local_play_rounded,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget informationText(String contentText, double contentFontSize) {
    return Text(
      contentText,
      style: TextStyle(
          fontFamily: 'AdventPro',
          fontSize: contentFontSize,
          color: Colors.white,
          letterSpacing: 2),
    );
  }

  informationCard(String informationContent, IconData informationIcon) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(
              informationIcon,
              color: Colors.blueGrey,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Text(informationContent),
            )
          ],
        ),
      ),
    );
  }
}
