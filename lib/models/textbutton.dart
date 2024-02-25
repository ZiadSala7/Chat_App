import 'package:flutter/material.dart';

class TextButtonModel extends StatelessWidget {
  final String name;
  final Color color;
  // ignore: non_constant_identifier_names
  final Function() OnPressed;

  const TextButtonModel(
      {super.key,
      required this.name,
      required this.color,
      // ignore: non_constant_identifier_names
      required this.OnPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: ElevatedButton(
        onPressed: () {
          OnPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: const BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            name,
            style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                // fontFamily: 'EBGaramond',
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
