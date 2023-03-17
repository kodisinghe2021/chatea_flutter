import 'package:chatea_app/constant.dart';
import 'package:chatea_app/screens/main/chat/chat.dart';
import 'package:chatea_app/screens/main/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // current screen index
  int _currentIndex = 0;

  //screens list
  final List<Widget> _screens = [
    const Home(),
    const Chat(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
        bottomNavigationBar: GNav(
          tabBackgroundColor: Colors.black.withOpacity(.7),
          activeColor: kWhite,
          color: kShadow,
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.fromLTRB(50, 10, 50, 15),
          selectedIndex: _currentIndex,
          onTabChange: (tappedIndex) => setState(() {
            _currentIndex = tappedIndex;
          }),
          tabs: const [
            GButton(
              icon: LineIcons.home,
              text: 'Home',
            ),
            GButton(
              icon: LineIcons.rocketChat,
              text: 'Chat',
            ),
          ],
        ),
      ),
    );
  }
}
