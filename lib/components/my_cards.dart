import 'package:flutter/material.dart';
import 'my_card.dart';

class MyCards extends StatelessWidget {
  const MyCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(25),
      children: [
        MyCard(title: "algoritma"),
        MyCard(title: "data struktur"),
        MyCard(title: "API"),
        MyCard(title: "machine learning")
      ],
    );
  }
}
