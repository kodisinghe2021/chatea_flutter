import 'package:chatea_app/screens/widgets/chat_page_header.dart';
import 'package:chatea_app/screens/widgets/conversation_card.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //^ col1
        const ChatPageHeader(),
        //^ col2
        Expanded(
          flex: 14,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => const ConvercationCard(),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: 10,
            ),
          ),
        ),
      ],
    );
  }
}
