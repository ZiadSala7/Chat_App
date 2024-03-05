import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:chat_app/firebase/add_user_data.dart';
import 'package:chat_app/models/awesome_dialog_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

registerWithFirebase(email, password, context, mp) async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    awesomeDialogModel(
      context,
      DialogType.success,
      'Successful Registering',
      'You have just created an account .. ',
    );
    addUserData(context, mp, credential.user?.uid);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      awesomeDialogModel(
        context,
        DialogType.success,
        'Weak password',
        'try to make a strong one',
      );
    } else if (e.code == 'email-already-in-use') {
      awesomeDialogModel(
        context,
        DialogType.success,
        'Email in use',
        'email already in use, try another one',
      );
    } else {
      awesomeDialogModel(
        context,
        DialogType.success,
        'Error',
        e.code,
      );
    }
  } catch (e) {
    awesomeDialogModel(
      context,
      DialogType.success,
      'Error',
      e.toString(),
    );
  }
}
