import 'package:chat_app/home/chats/chats_view.dart';
import 'package:chat_app/home/chats/drawer_desigon.dart';
import 'package:chat_app/home/test.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const Drawer(
          child: DrawerModel(),
        ),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 51, 90, 118),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                ))
          ],
          title: const Text(
            'Messenger',
            style: TextStyle(color: Color.fromARGB(255, 17, 46, 58)),
          ),
          bottom: const TabBar(
            unselectedLabelStyle: TextStyle(
              color: Color.fromARGB(255, 18, 17, 17),
              fontSize: 16,
            ),
            labelStyle: TextStyle(
              color: Color.fromARGB(255, 252, 252, 252),
              fontSize: 18,
            ),
            indicatorColor: Color.fromRGBO(103, 208, 166, 1),
            tabs: [
              Tab(
                child: Text(
                  'Chats',
                ),
              ),
              Tab(
                child: Text(
                  'Groups',
                ),
              ),
              Tab(
                child: Text(
                  'States',
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        body: const TabBarView(
          children: [
            ChatScreen(),
            Test(txt: 'Hello world'),
            Test(txt: 'Merhapa++'),
          ],
        ),
      ),
    );
  }
}
