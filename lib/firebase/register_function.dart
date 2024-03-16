import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:chat_app/firebase/add_user_data.dart';
import 'package:chat_app/models/awesome_dialog_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

registerWithFirebase(email, password, context, name) async {
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
    addUserData(context, name, email, password, credential.user!.uid);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      awesomeDialogModel(
        context,
        DialogType.error,
        'Weak password',
        'try to make a strong one',
      );
    } else if (e.code == 'email-already-in-use') {
      awesomeDialogModel(
        context,
        DialogType.error,
        'Email in use',
        'email already in use, try another one',
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
