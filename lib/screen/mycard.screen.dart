import 'package:flutter/material.dart';
import 'package:ihec_workshop/widgets/ihec.componenets.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;
    print(args);

    return Material(
      child: SafeArea(
        child: Container(
          color: Colors.teal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('images/me.jpg'),
                radius: 60,
              ),
              informationText('$args', 36),
              informationText('Mobile Developer', 28),
              informationCard('oussamaaroua@orange.com', Icons.email),
              informationCard('50 000 000', Icons.phone),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.local_play_rounded,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
