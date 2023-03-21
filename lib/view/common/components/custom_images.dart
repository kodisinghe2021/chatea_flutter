import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skeletons/skeletons.dart';

//* ----------------------------------------------
class SvgIcon extends StatelessWidget {
  const SvgIcon({
    required this.imgPath,
    super.key,
  });

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/$imgPath.svg',
      width: 30,
      height: 30,
    );
  }
}

//* ----------------------------------------------
Image networkImage(String url) => Image.network(
      url,
      height: 50,
      width: 50,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return const SkeletonAvatar(
          style: SkeletonAvatarStyle(
            width: 50,
            height: 50,
          ),
        );
      },
      fit: BoxFit.fill,
    );

//* ----------------------------------------------
Widget networkImageCirculler(String url) => ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Image.network(
        url,
        height: 50,
        width: 50,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return SkeletonAvatar(
            style: SkeletonAvatarStyle(
              width: 50,
              height: 50,
              borderRadius: BorderRadius.circular(50),
            ),
          );
        },
        fit: BoxFit.fill,
      ),
    );
