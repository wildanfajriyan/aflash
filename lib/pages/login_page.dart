import 'package:flutter/material.dart';
import '../components/my_textfield.dart';
import '../components/my_button_login.dart';
import 'register_page.dart';
import 'dashboard_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // const Color.fromARGB(0, 7, 10, 133),
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "AMIK",
                    style: TextStyle(
                      color: Color.fromARGB(255, 73, 73, 211),
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    "FLASH",
                    style: TextStyle(
                        color: Color.fromARGB(255, 73, 73, 211),
                        fontSize: 40,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),

              const SizedBox(
                height: 25,
              ),

              // welcome back

              // username textfield
              MyTextField(
                controller: emailController,
                hintText: 'Username',
                obscureText: false,
                enabled: true,
              ),

              const SizedBox(
                height: 25,
              ),

              // forgot password
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                enabled: true,
              ),

              // sign in
              const SizedBox(
                height: 50,
              ),

              MyButtonLogin(
                title: 'Sign In',
                emailController: emailController,
                passController: passwordController,
              ),

              const SizedBox(
                height: 25,
              ),

              // register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Belum register ?",
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     const Text(
              //       "Dashboard",
              //       style: TextStyle(color: Colors.black),
              //     ),
              //     const SizedBox(
              //       width: 4,
              //     ),
              //     GestureDetector(
              //       onTap: () {
              //         Navigator.push(context,
              //             MaterialPageRoute(builder: (context) => Dashboard()));
              //       },
              //       child: const Text(
              //         "Dashboard",
              //         style: TextStyle(
              //             color: Colors.blue, fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        )));
  }
}
