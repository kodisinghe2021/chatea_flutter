import 'package:chatea_app/common/components/custom_text.dart';
import 'package:flutter/material.dart';

class ConversationPageHeader extends StatelessWidget {
  const ConversationPageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        children: const [
          //* col1-r1
          Expanded(
            flex: 2,
            child: ProfilePic(),
          ),
          //* col1-r2
          Expanded(
            flex: 4,
            child: ProfileName(),
          ),
          //* col1-r3
          Expanded(
            flex: 2,
            child: LogoutIcon(),
          ),
        ],
      ),
    );
  }
}

//* logout icon
class LogoutIcon extends StatelessWidget {
  const LogoutIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Spacer(flex: 2),
        Expanded(
          flex: 2,
          child: FittedBox(
            child: Icon(Icons.logout),
          ),
        ),
        Spacer(flex: 1),
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
        const Spacer(flex: 1),
        Expanded(
          flex: 2,
          child: FittedBox(
            child: textSubTitle('Janakanthi Ramyalatha'),
          ),
        ),
        const Spacer(flex: 1),
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
