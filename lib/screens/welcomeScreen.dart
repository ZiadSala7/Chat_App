// ignore_for_file: file_names

import 'package:chat_app/models/textbutton.dart';
import 'package:chat_app/screens/loginPage.dart';
import 'package:chat_app/screens/registerPage.dart';
import 'package:flutter/material.dart';

class WelcomScreen extends StatefulWidget {
  const WelcomScreen({super.key});

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const Text(
            'Welcome',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Welcome to our app , let's Get started",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Image(
            image: AssetImage('assets/images/welcome_.png'),
            alignment: Alignment.center,
          ),
          TextButtonModel(
              name: 'Login',
              color: Colors.white,
              OnPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              }),
          const SizedBox(
            height: 25,
          ),
          TextButtonModel(
              name: 'Register',
              color: const Color.fromARGB(255, 102, 163, 221),
              OnPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              }),
        ],
      ),
    );
  }
}
