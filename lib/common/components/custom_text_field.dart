import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
 CustomTextField({
    this.hintText,
    this.labelText,
    this.preffix,
    this.suffix,
    super.key,
  });

  String? hintText;
  String? labelText;
  Icon? suffix;
  Icon? preffix;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: suffix??const Icon(Icons.security),
        prefixIcon: preffix??const Icon(Icons.mail),
        hintText: hintText??'',
        label: Text(labelText??''),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
