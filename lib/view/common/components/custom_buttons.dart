import 'package:chatea_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.text,
    required this.onTap,
    this.isLoading = false,
    super.key,
  });

  final String text;
  final Function() onTap;
  bool isLoading;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(shape: const OvalBorder()),
        child: isLoading
            ? const Center(
                child: SpinKitFadingCircle(
                  color: kWhite,
                ),
              )
            : Text(
                text,
                style: GoogleFonts.cabin(fontSize: 20),
              ),
      ),
    );
  }
}
