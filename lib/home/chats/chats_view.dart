import 'package:chat_app/home/chats/chat_page_with_persons.dart';
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
      body: Container(
        padding: const EdgeInsets.all(4),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ChatPage()));
              },
              child: Card(
                margin: const EdgeInsets.all(4),
                child: ListTile(
                  leading: SizedBox(
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
                      Badge(
                        label: const Text('4'),
                        backgroundColor: Colors.green,
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(Icons.message),
                        ),
                      ),
                      const Text('12:30 am'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
