import 'package:chatea_app/view/common/components/custom_text.dart';
import 'package:chatea_app/constant.dart';
import 'package:chatea_app/view/screens/first_flow_screen/chat/widgets/chat_header.dart';
import 'package:flutter/material.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: const [
            Expanded(
              flex: 2,
              child: ChatPageHeader(),
            ),
            Expanded(
              flex: 16,
              child: ChatArea(),
            ),
           // ChatBar(),
          ],
        ),
      ),
    );
  }
}

class ChatArea extends StatelessWidget {
  const ChatArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        children: [
          //Gap between app bar and body
          SizedBox(
            height: screenSize(context).height * .02,
          ),
          //body
          ChatBubbleWithTime(
            message:
                'Hellow How are you? machan kohomada kaalada beelada naalada?',
            isSender: false,
            time: '10 min ago',
          ),
          ChatBubbleWithTime(
            message: 'naalath na kaalath naa, sallith na wale wal na bn.',
            isSender: true,
            time: '10 min ago',
          ),
        ],
      ),
    );
  }
}

class ChatBubbleWithTime extends StatelessWidget {
  ChatBubbleWithTime({
    required this.message,
    required this.isSender,
    required this.time,
    this.isSend = false,
    this.isDelever = false,
    this.isSeen = false,
    super.key,
  });
  String message;
  String time;
  bool isSender;
  bool isSend;
  bool isDelever;
  bool isSeen;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        ChatBubbleWithTime(
       message: message,
       isSender: true,
       time: '10:30',
       isSeen: isSeen,
       isSend: isSend,
       isDelever: isDelever,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15),
          height: 15,
          child: FittedBox(
            child: textSubTitle(time),
          ),
        )
      ],
    );
  }
}

// class ChatBar extends StatefulWidget {
//   const ChatBar({super.key});

//   @override
//   State<ChatBar> createState() => _ChatBarState();
// }

// class _ChatBarState extends State<ChatBar> {
//   @override
//   Widget build(BuildContext context) {
//     return (
//       onSend: (_) => print(_),
//       actions: [
//         InkWell(
//           child: const Icon(
//             Icons.add,
//             color: Colors.black,
//             size: 24,
//           ),
//           onTap: () {},
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 8, right: 8),
//           child: InkWell(
//             child: const Icon(
//               Icons.camera_alt,
//               color: Colors.green,
//               size: 24,
//             ),
//             onTap: () {},
//           ),
//         ),
//       ],
//     );
//   }
// }
