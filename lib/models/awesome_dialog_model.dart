import 'package:awesome_dialog/awesome_dialog.dart';

awesomeDialogModel(context, DialogType dialogType, String title, String desc) {
  AwesomeDialog(
    context: context,
    dialogType: dialogType,
    animType: AnimType.topSlide,
    title: title,
    desc: desc,
  ).show();
}
