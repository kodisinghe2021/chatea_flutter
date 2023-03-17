import 'package:chatea_app/common/components/custom_text.dart';
import 'package:chatea_app/constant.dart';
import 'package:flutter/material.dart';

class ConvercationCard extends StatelessWidget {
  const ConvercationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenSize(context).height * .1,
      child: Stack(
        children: [
          //* back ground container
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10, left: 15, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 5),
                    spreadRadius: 1,
                    blurRadius: 10,
                    color:
                        const Color.fromARGB(255, 55, 54, 54).withOpacity(.5),
                  )
                ],
              ),
              child: Row(
                children: [
                  const Spacer(flex: 2),
                  //* Name head and message view
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 4,
                          child: FittedBox(
                            child: textSubTitle('Kusal Janith'),
                          ),
                        ),
                        const Spacer(flex: 2),
                        Expanded(
                          flex: 3,
                          child: FittedBox(
                            child: textSubTitle('bola athak gahamutha ? '),
                          ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(flex: 1),
                  //* time view
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: FittedBox(
                            child: textSubTitle('1 min ago'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(flex: 1),
                ],
              ),
            ),
          ),
          //* avatar
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/male.jpg',
                width: screenSize(context).width * .15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
