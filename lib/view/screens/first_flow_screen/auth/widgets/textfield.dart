
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.controller,
    required this.label,
    this.prefix,
    this.suffix,
    this.isObsecure = false,
  });

  final String label;
  final TextEditingController controller;
  final Icon? prefix;
  final Icon? suffix;
  final bool isObsecure;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(flex: 1),
        //* prefix icon
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: FittedBox(
              child: prefix ??
                  const Icon(
                    Icons.email_outlined,
                    color: Colors.blueAccent,
                  ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: TextField(
            obscureText: isObsecure,
            decoration: InputDecoration(
              labelText: label,
            ),
          ),
        ),
        //* suffix icon
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: FittedBox(
              child: suffix ??
                  const Icon(
                    Icons.error_outlined,
                    color: Colors.red,
                  ),
            ),
          ),
        ),
        const Spacer(flex: 1),
      ],
    );
  }
}
