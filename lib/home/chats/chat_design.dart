import 'package:chat_app/home/chats/messages.dart';
import 'package:chat_app/models/reciever.dart';
import 'package:chat_app/models/sender.dart';
import 'package:flutter/material.dart';

class ChatDesign extends StatefulWidget {
  const ChatDesign({super.key});

  @override
  State<ChatDesign> createState() => _ChatDesignState();
}

class _ChatDesignState extends State<ChatDesign> {
  // ignore: non_constant_identifier_names
  final chat_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: msgs.length,
              itemBuilder: (context, indx) {
                return Column(
                  children: [
                    CustomChatDesignSender(
                      txt: msgs[indx],
                    ),
                    CustomChatDesignReciever(
                      txt: msgs[indx],
                    ),
                  ],
                );
              }),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          color: const Color.fromARGB(255, 51, 90, 118),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: chat_controller,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
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
                        icon: const Icon(Icons.mic),
                      )),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      msgs.add(chat_controller.text);
                      chat_controller.clear();
                    });
                  },
                  icon: const Icon(
                    Icons.send,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
