import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

awesomeDialogModel(
  BuildContext context,
  DialogType dialogType,
  String title,
  String desc,
) {
  AwesomeDialog(
    context: context,
    dialogType: dialogType,
    animType: AnimType.topSlide,
    title: title,
    desc: desc,
    transitionAnimationDuration: const Duration(seconds: 1),
  ).show();
}
