import 'package:flutter/material.dart';
import '../components/my_textfield.dart';
import '../components/my_button_register.dart';
import 'login_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
                enabled: true,
              ),

              const SizedBox(
                height: 25,
              ),

              // email textfield
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
                enabled: true,
              ),

              const SizedBox(
                height: 25,
              ),

              // password textfield
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

              MyButtonRegister(
                  title: "Register",
                  usernameController: usernameController,
                  emailController: emailController,
                  passController: passwordController),

              const SizedBox(
                height: 25,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Punya akun ?",
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        )));
  }
}
