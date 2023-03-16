import 'package:flutter/material.dart';

class UtilFunctions {
  static void navigateTo(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  static void backToPage(BuildContext context) {
    Navigator.of(context).pop();
  }
}
