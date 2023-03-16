import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:chatea_app/constant.dart';
import 'package:chatea_app/common/components/custom_buttons.dart';
import 'package:chatea_app/common/components/custom_dialog_box.dart';
import 'package:chatea_app/common/components/custom_images.dart';
import 'package:chatea_app/common/components/custom_text_field.dart';
import 'package:chatea_app/screens/main/chat/chat.dart';
import 'package:chatea_app/screens/main/home/home.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // current screen index
  int currentIndex = 0;

  //screens list
  final List<Widget> _screens = [
    const Home(),
    const Chat(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(currentIndex),
    );
  }
}
