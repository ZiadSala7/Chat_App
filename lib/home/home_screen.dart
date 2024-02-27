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
        appBar: AppBar(
          title: const Text(
            'Messenger',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff21323A),
          bottom: const TabBar(
            unselectedLabelStyle: TextStyle(
              color: Colors.white,
            ),
            labelStyle: TextStyle(color: Colors.green),
            indicatorColor: Color.fromRGBO(141, 242, 153, 1),
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
        body: const TabBarView(
          children: [
            Test(txt: 'Merhapa'),
            Test(txt: 'Hello world'),
            Test(txt: 'Merhapa++'),
          ],
        ),
      ),
    );
  }
}
