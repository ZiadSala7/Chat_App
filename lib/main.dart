import 'package:chat_app/home/home_screen.dart';
import 'package:chat_app/screens/firebase_options.dart';
import 'package:chat_app/screens/loginPage.dart';
import 'package:chat_app/screens/registerPage.dart';
import 'package:chat_app/screens/welcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        'login': (context) => const LoginPage(),
        'register': (context) => const RegisterPage(),
        'home': (context) => const HomeScreen(),
      },
    );
  }
}
