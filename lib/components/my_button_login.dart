import 'package:flutter/material.dart';
import '../services/AuthService.dart';
import '../pages/dashboard_page.dart';

class MyButtonLogin extends StatelessWidget {
  final String title;
  final TextEditingController emailController;
  final TextEditingController passController;

  const MyButtonLogin(
      {super.key,
      required this.title,
      required this.emailController,
      required this.passController});

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
          SignInSignUpResult result = await AuthService.signInWithEmail(
              email: emailController.text, pass: passController.text);
          if (!context.mounted) return;
          if (result.user != null) {
            // Go to Profile Page
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Dashboard(user: result.user)));
          } else {
            // Show dialog
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                        title: const Text('Error'),
                        content: Text(result.message),
                        actions: <Widget>[
                          FloatingActionButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          )
                        ]));
          }
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
