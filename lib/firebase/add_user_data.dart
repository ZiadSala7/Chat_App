import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:chat_app/models/awesome_dialog_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> addUserData(context, name, email, password, uid) async {
  FirebaseFirestore.instance
      .collection('User_Data')
      .doc(uid)
      .set({
        'email': email,
        'password': password,
        'name': name,
      })
      .then((value) => awesomeDialogModel(
            context,
            DialogType.success,
            'Successful adding',
            'Data has been added successfully',
          ))
      // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
      .catchError((Error) => awesomeDialogModel(
            context,
            DialogType.error,
            Error,
            Error,
          ));
}
