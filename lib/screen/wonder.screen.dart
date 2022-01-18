import 'dart:math';

import 'package:flutter/material.dart';

class WonderScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WonderScreenState();
  }
}

class WonderScreenState extends State<WonderScreen>
    with SingleTickerProviderStateMixin {
  var position = 0;

  late AnimationController controller;
  late Animation sizeAnimation;
  late Animation colorAnimation;

  List<String> imagesList = List.of({
    'china.png',
    'england.png',
    'europe.png',
    'italy.png',
    'mexico.png',
    'petra.png',
  });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Image.asset(
            'images/${imagesList[position]}',
          ),
        ),
        Text(imagesList[position]),
        ElevatedButton(
          onPressed: () {
            setState(() {
              position = Random().nextInt(6);
              print("new value = $position");
            });
          },
          child: const Text(
            'Load Random Wonder',
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.blueGrey,
            ),
          ),
          onPressed: () {},
          child: const Text(
            'Load Random Wonder',
          ),
        )
      ],
    ));
  }
}
