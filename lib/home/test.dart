import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  final String txt;
  const Test({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(txt),
      ),
    );
  }
}
