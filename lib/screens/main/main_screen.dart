import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:chatea_app/constant.dart';
import 'package:chatea_app/common/components/custom_buttons.dart';
import 'package:chatea_app/common/components/custom_dialog_box.dart';
import 'package:chatea_app/common/components/custom_images.dart';
import 'package:chatea_app/common/components/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hi .. prabhath"),
      ),
      body: SizedBox(
        width: screenSize(context).width,
        height: screenSize(context).height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onTap: () {
                Logger().i("Clicked");
              },
              text: 'click',
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: screenSize(context).width * .8,
              child: CustomTextField(),
            ),
            const SizedBox(height: 30),
            const SvgIcon(imgPath: 'users-ico'),
            const SizedBox(height: 20),
            networkImage(
              'https://png.pngtree.com/png-clipart/20190924/original/pngtree-user-vector-avatar-png-image_4830521.jpg',
            ),
            const SizedBox(height: 30),
            networkImageCirculler(
              'https://png.pngtree.com/png-clipart/20190924/original/pngtree-user-vector-avatar-png-image_4830521.jpg',
            ),
            const SizedBox(height: 20),
            CustomButton(
              isLoading: isLoading,
              text: 'show message',
              onTap: () {
                setState(() {
                  isLoading = true;
                });
                DialogBox().dialogBox(
                  context,
                  DialogType.info,
                  'title',
                  'desc',
                  () {
                    Logger().e('CANCEL');
                    setState(() {
                      isLoading = false;
                    });
                  },
                  () {
                    Logger().e('OK');
                    setState(() {
                      isLoading = false;
                    });
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
