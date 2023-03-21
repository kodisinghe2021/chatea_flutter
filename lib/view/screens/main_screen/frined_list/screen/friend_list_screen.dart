import 'package:chatea_app/view/screens/main_screen/frined_list/widgets/friend_list_card.dart';
import 'package:flutter/material.dart';

class FriendListScreen extends StatefulWidget {
  const FriendListScreen({super.key});

  @override
  State<FriendListScreen> createState() => _FriendListScreenState();
}

class _FriendListScreenState extends State<FriendListScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => const FriendListCard(),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: 10,
            ),
          ),
        ),
      ],
    );
  }
}
