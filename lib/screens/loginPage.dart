// ignore_for_file: file_names

import 'package:chat_app/models/text_form_field.dart';
import 'package:chat_app/models/text_model.dart';
import 'package:chat_app/models/textbutton.dart';
import 'package:chat_app/screens/registerPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool scure = true;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Form(
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Login',
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
                  "login to your account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextModel(txt: 'Email'),
                TextFormFieldModel(
                  OnChange: (data) {
                    email = data;
                  },
                  secure: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextModel(txt: 'Password'),
                TextFormFieldModel(
                  OnChange: (data) {
                    password = data;
                  },
                  secure: scure,
                  suffixicon: IconButton(
                    onPressed: () {
                      setState(() {
                        scure = !scure;
                      });
                    },
                    icon: scure
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButtonModel(
                    name: 'Login',
                    color: const Color.fromARGB(255, 102, 163, 221),
                    OnPressed: () async {
                      // firebase code for login
                      try {
                        FirebaseAuth auth = FirebaseAuth.instance;
                        // ignore: unused_local_variable
                        UserCredential user =
                            await auth.signInWithEmailAndPassword(
                          email: email,
                          password: password,
                        );
                        // ignore: use_build_context_synchronously
                        Navigator.pushNamed(context, 'home');
                      } on FirebaseAuthException catch (e) {
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('$e'),
                          ),
                        );
                      } catch (e) {
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('$e'),
                          ),
                        );
                      }
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()),
                        );
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                const Image(
                  image: AssetImage('assets/images/background.png'),
                  alignment: Alignment.center,
                ),
              ],
            ),
          )),
    );
  }
}
