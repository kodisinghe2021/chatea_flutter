import 'package:chatea_app/view/common/components/custom_text.dart';
import 'package:chatea_app/utils/util_functions.dart';
import 'package:flutter/material.dart';

class ChatPageHeader extends StatelessWidget {
  const ChatPageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: FittedBox(
            child: IconButton(
              onPressed: () => UtilFunctions.backToPage(context),
              icon: const Icon(
                Icons.arrow_left,
              ),
            ),
          ),
        ),
        const Expanded(
          flex: 3,
          child: ProfilePic(),
        ),
        const Expanded(
          flex: 5,
          child: ProfileName(),
        ),
        const Expanded(
          flex: 1,
          child: SuffixIcon(),
        ),
      ],
    );
  }
}

class SuffixIcon extends StatelessWidget {
  const SuffixIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Spacer(flex: 1),
        Expanded(
          flex: 2,
          child: FittedBox(
            child: Icon(Icons.settings),
          ),
        ),
        Spacer(flex: 1),
        // Spacer(flex: 1),
      ],
    );
  }
}

//* Profile name
class ProfileName extends StatelessWidget {
  const ProfileName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 2),
        Expanded(
          flex: 2,
          child: FittedBox(
            child: textSubTitle('Janakanthi Ramya'),
          ),
        ),
        const Spacer(flex: 2),
      ],
    );
  }
}

//* profile picture
class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 1),
        Expanded(
          flex: 5,
          //* Profile pic
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/female.jpg',
              //width: screenSize(context).width * .1,
            ),
          ),
        ),
        const Spacer(flex: 1),
      ],
    );
  }
}
