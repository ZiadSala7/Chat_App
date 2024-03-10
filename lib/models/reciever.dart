import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

// ignore: must_be_immutable
class CustomChatDesignReciever extends StatelessWidget {
  String txt;
  CustomChatDesignReciever({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      clipper: ChatBubbleClipper1(type: BubbleType.receiverBubble),
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(top: 20),
      backGroundColor: Colors.white,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Text(
          txt,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
    );
  }
}
