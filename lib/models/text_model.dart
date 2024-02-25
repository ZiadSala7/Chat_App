import 'package:flutter/material.dart';

class TextModel extends StatelessWidget {
  final String txt;
  const TextModel({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        txt,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
