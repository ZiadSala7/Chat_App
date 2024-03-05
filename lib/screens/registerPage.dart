// ignore_for_file: file_names

import 'package:chat_app/firebase/register_function.dart';
import 'package:chat_app/models/text_form_field.dart';
import 'package:chat_app/models/text_model.dart';
import 'package:chat_app/models/textbutton.dart';
import 'package:chat_app/screens/loginPage.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool scure = false;
  late String name;
  late String email;
  late String password;
  late String confirmPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Sign up',
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
              "Let's create an account, it's free",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextModel(txt: 'Username'),
            TextFormFieldModel(
              OnChange: (data) {
                name = data;
              },
              secure: false,
            ),
            const TextModel(txt: 'Email'),
            TextFormFieldModel(
              OnChange: (data) {
                email = data;
              },
              secure: false,
            ),
            const TextModel(txt: 'Password'),
            TextFormFieldModel(
              OnChange: (data) {
                password = data;
              },
              secure: false,
            ),
            const TextModel(txt: 'Confirm Password'),
            TextFormFieldModel(
              OnChange: (data) {
                confirmPassword = data;
              },
              secure: false,
            ),
            TextButtonModel(
              name: 'Sign up',
              color: const Color.fromARGB(255, 102, 163, 221),
              OnPressed: () async {
                if (password == confirmPassword) {
                  Map<String, dynamic> mp = {
                    'email': email,
                    'password': password,
                    'name': name,
                  };
                  registerWithFirebase(email, password, context, mp);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("password isn't identical"),
                    ),
                  );
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
