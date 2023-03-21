
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
   LoginButton({
    required this.onTap,
    super.key,
  });

  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blueAccent,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 10),
                color: Colors.black.withOpacity(.2),
                blurRadius: 10,
                spreadRadius: 3,
              ),
            ]),
        child: const FittedBox(
          child: Icon(
            Icons.arrow_forward_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
