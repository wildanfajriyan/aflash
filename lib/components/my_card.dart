import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;

  const MyCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {},
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Color.fromARGB(255, 73, 73, 211),
                  fontWeight: FontWeight.bold),
            )
          ],
        )),
      ),
    );
  }
}
