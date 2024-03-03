import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert_rounded,
            color: Colors.white,
          ),
        ),
        title: Row(
          children: [
            SizedBox(
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
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Ziad Salah",
              style: TextStyle(
                color: Color.fromARGB(255, 254, 254, 254),
                fontSize: 16,
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 37, 37, 37),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Expanded(
            child: Text(''),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: ' Write message ...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.photo),
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                )),
          ),
        ],
      ),
    );
  }
}
