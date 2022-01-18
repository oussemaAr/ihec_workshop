import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.teal,
        child: Column(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/image.jpg'),
              radius: 60,
            ),
          ],
        ),
      ),
    );
  }
}
