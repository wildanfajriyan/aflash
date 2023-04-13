// import 'package:amikflash/components/my_cards.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/my_button_logout.dart';
import '../components/my_textfield.dart';

class ProfilePage extends StatelessWidget {
  final UserCredential user;

  ProfilePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Profile",
                style: TextStyle(
                  color: Color.fromARGB(255, 73, 73, 211),
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          MyTextField(
            controller: null,
            hintText: user.user?.email,
            obscureText: false,
            enabled: false,
          ),
          const SizedBox(
            height: 20,
          ),
          MyTextField(
            controller: null,
            hintText: user.user?.displayName,
            obscureText: false,
            enabled: false,
          ),
          const SizedBox(
            height: 50,
          ),
          MyButtonLogout(title: "Sign out")
        ],
      ),
    );
  }
}
