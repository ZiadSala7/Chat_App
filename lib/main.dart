import 'package:chat_app/home/home_screen.dart';
import 'package:chat_app/screens/firebase_options.dart';
import 'package:chat_app/screens/loginPage.dart';
import 'package:chat_app/screens/registerPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.white,
            ));
          } else if (snapshot.hasData) {
            return const HomeScreen();
          } else {
            return const LoginPage();
          }
        },
      ),
      theme: ThemeData.light().copyWith(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        iconButtonTheme: const IconButtonThemeData(
            style:
                ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.white))),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        'login': (context) => const LoginPage(),
        'register': (context) => const RegisterPage(),
        'home': (context) => const HomeScreen(),
      },
    );
  }
}
