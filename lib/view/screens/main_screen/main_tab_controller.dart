import 'package:chatea_app/constant.dart';
import 'package:chatea_app/view/screens/main_screen/conversation/screens/conversation_screen.dart';
import 'package:chatea_app/view/screens/main_screen/conversation/widgets/conversation_header.dart';
import 'package:chatea_app/view/screens/main_screen/frined_list/screen/friend_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MainTabController extends StatefulWidget {
  const MainTabController({super.key});

  @override
  State<MainTabController> createState() => _MainTabControllerState();
}

class _MainTabControllerState extends State<MainTabController> {
  // current screen index
  int _currentIndex = 0;

  //screens list
  final List<Widget> _screens = [
    const FriendListScreen(),
    const ConversationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Expanded(
              flex: 1,
              child: ConversationPageHeader(),
            ),
            Expanded(
              flex: 13,
              child: IndexedStack(
                index: _currentIndex,
                children: _screens,
              ),
            ),
          ],
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
