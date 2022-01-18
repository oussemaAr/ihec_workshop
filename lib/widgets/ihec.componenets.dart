import 'package:flutter/material.dart';

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

Widget informationCard(String informationContent, IconData informationIcon) {
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
