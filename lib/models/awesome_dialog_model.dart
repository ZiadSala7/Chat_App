import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

awesomeDialogModel(
    context, DialogType dialogType, String title, String desc) async {
  AwesomeDialog(
    context: context,
    dialogType: dialogType,
    animType: AnimType.topSlide,
    title: title,
    desc: desc,
    transitionAnimationDuration: const Duration(seconds: 2),
    btnOkOnPress: () {
      Navigator.pop(context);
    },
  ).show();
}
