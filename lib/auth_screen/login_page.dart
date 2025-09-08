import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/my_button.dart';
import 'package:flutter_application_3/components/my_textfield.dart';

class Login extends StatelessWidget {
  Login({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // Logo
              SizedBox(height: 50),
              Icon(Icons.lock, size: 100),
              SizedBox(height: 50),
              // Welcome back, you've been missed!
              Text(
                "Welcome back you\'ve been missed",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(height: 25),
              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: "Username",
                obscureText: false,
              ),
              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),

              const SizedBox(height: 10),
              // forgot password ?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),
              // sign in button
              MyButton()
              // or continue with

              // google + apple sign in buttons

              // not a member ? register now
            ],
          ),
        ),
      ),
    );
  }
}
