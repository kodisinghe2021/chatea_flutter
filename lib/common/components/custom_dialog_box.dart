import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class DialogBox {
  Future<dynamic> dialogBox(
    BuildContext context,
    DialogType type,
    String title,
    String desc,
    Function() onCancel,
    Function() onOk,
  ) async {
    return AwesomeDialog(
      context: context,
      dialogType: type,
      animType: AnimType.rightSlide,
      title: title,
      desc: desc,
      btnCancelOnPress: onCancel,
      btnOkOnPress: onOk,
    )..show();
  }
}
