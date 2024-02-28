import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {},
            child: Card(
              margin: const EdgeInsets.all(4),
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: const Text(
                  'Ziad Salah',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: const Text(
                  'Hello ziad how r u',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 113, 108, 108)),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Text(
                        '3',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Text('12:30 am')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
