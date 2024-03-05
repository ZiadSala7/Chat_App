import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:chat_app/models/awesome_dialog_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

addUserData(context, Map<String, dynamic> mp, uid) async {
  // ignore: unused_local_variable
  CollectionReference user = FirebaseFirestore.instance.collection('User_Data');
  return user
      .doc(uid)
      .set({
        mp,
      })
      .then((value) => awesomeDialogModel(
            context,
            DialogType.error,
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
