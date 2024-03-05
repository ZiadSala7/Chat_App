import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:chat_app/models/awesome_dialog_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

loginWithFirebase(email, password, context) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    awesomeDialogModel(
      context,
      DialogType.success,
      'Successful login',
      'Welcome ...',
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      awesomeDialogModel(
        context,
        DialogType.error,
        'User not found',
        'There is no account for this email, register first',
      );
    } else if (e.code == 'wrong-password') {
      awesomeDialogModel(
        context,
        DialogType.error,
        'Wrong password',
        'password not correct, try again ...',
      );
    } else {
      awesomeDialogModel(
        context,
        DialogType.error,
        'Error',
        e.code,
      );
    }
  } catch (e) {
    awesomeDialogModel(
      context,
      DialogType.error,
      'Error',
      e.toString(),
    );
  }
}
