import 'package:chat_app/models/snackpar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerModel extends StatefulWidget {
  const DrawerModel({super.key});

  @override
  State<DrawerModel> createState() => _DrawerModelState();
}

class _DrawerModelState extends State<DrawerModel> {
  late DocumentSnapshot<Map<String, dynamic>> data;
  bool isLoading = true;
  getUserData() async {
    try {
      data = await FirebaseFirestore.instance
          .collection('User_Data')
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .get();
    } catch (e) {
      showSnackbar(e.toString());
    }
    setState(() {
      isLoading = !isLoading;
    });
  }

  @override
  void initState() {
    getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 66, 85, 95),
                ),
                accountName: Text(
                  data['name']['name'].toString(),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 44, 143, 214),
                  ),
                ),
                accountEmail: Text(
                  data['email'].toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                currentAccountPictureSize: const Size.square(70),
                currentAccountPicture: InkWell(
                  onTap: () {
                    // ignore: unused_element
                    showPhoto() {
                      return const Dialog(
                        backgroundColor: Colors.amber,
                        child: Image(
                          image: AssetImage("assets/images/profile.jpg"),
                        ),
                      );
                    }
                  },
                  child: const CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                ),
              ),
              ListTile(
                  title: const Text("My Profile"),
                  leading: const Icon(Icons.person),
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
