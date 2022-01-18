import 'package:flutter/material.dart';
import 'package:ihec_workshop/widgets/ihec.componenets.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = List<String>.generate(100, (index) => "Item $index");
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return informationCard(list[index], Icons.email_outlined);
      },
    );
  }
}
