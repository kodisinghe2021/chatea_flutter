import 'package:chatea_app/view/screens/main_screen/conversation/widgets/conversation_card.dart';
import 'package:flutter/material.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({super.key});

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => const ConversationCard(),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: 10,
            ),
          ),
        ),
      ],
    );
  }
}
