import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:chat_app/models/awesome_dialog_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DrawerModel extends StatefulWidget {
  const DrawerModel({super.key});

  @override
  State<DrawerModel> createState() => _DrawerModelState();
}

class _DrawerModelState extends State<DrawerModel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 66, 85, 95),
          ),
          accountName: Text(
            "Ziad Salah",
            style: TextStyle(
              color: Color.fromARGB(255, 44, 143, 214),
            ),
          ),
          accountEmail: Text(
            "zslah650@gmail.com",
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
          currentAccountPictureSize: Size.square(70),
          currentAccountPicture: CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage("assets/images/profile.jpg"),
          ),
        ),
        ListTile(
            title: const Text("My Profile"),
            leading: const Icon(Icons.person),
            onTap: () {
              awesomeDialogModel(
                context,
                DialogType.success,
                'Successful login',
                'Welcome ...',
              );
            }),
        ListTile(
            title: const Text("About"),
            leading: const Icon(Icons.help_center),
            onTap: () {}),
        ListTile(
            title: const Text("Logout"),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {
              setState(() {
                FirebaseAuth.instance.signOut();
              });
            }),
      ],
    );
  }
}
