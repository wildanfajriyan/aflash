import 'package:amikflash/pages/login_page.dart';
import 'package:flutter/material.dart';
import '../services/AuthService.dart';
import '../pages/dashboard_page.dart';

class MyButtonLogout extends StatelessWidget {
  final String title;

  const MyButtonLogout({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 73, 73, 211),
          borderRadius: BorderRadius.circular(8)),
      child: ElevatedButton(
        style:
            ElevatedButton.styleFrom(primary: Color.fromARGB(255, 73, 73, 211)),
        onPressed: () async {
          await AuthService.signOut();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        child: Center(
            child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),
        )),
      ),
    );
  }
}
