import 'package:chatea_app/constant.dart';
import 'package:chatea_app/view/common/components/custom_text.dart';
import 'package:chatea_app/utils/util_functions.dart';
import 'package:chatea_app/view/screens/main_screen/main_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class SplashSreen extends StatefulWidget {
  const SplashSreen({super.key});

  @override
  State<SplashSreen> createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      UtilFunctions.navigateTo(
        context,
        const MainTabController(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: screenSize(context).width,
        height: screenSize(context).height,
        color: kAmber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeIn(
              duration: const Duration(seconds: 2),
              child: const Icon(
                Icons.message,
                size: 80,
                color: kWhite,
              ),
            ),
            FadeIn(
              duration: const Duration(seconds: 2),
              child: textHeadType('Chatea'),
            ),
          ],
        ),
      ),
    );
  }
}
