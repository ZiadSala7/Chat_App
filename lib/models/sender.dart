import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

// ignore: must_be_immutable
class CustomChatDesignSender extends StatelessWidget {
  String txt;
  CustomChatDesignSender({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
      alignment: Alignment.topRight,
      margin: const EdgeInsets.only(top: 20),
      backGroundColor: Colors.blue,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Text(
          txt,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
