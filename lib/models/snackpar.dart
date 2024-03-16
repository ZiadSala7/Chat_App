import 'package:flutter/material.dart';

showSnackbar(String txt) {
  return ScaffoldMessenger(
    child: SnackBar(
      content: Text(txt),
    ),
  );
}
