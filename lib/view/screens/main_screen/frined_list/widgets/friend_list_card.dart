import 'package:chatea_app/view/common/components/custom_text.dart';
import 'package:chatea_app/constant.dart';
import 'package:flutter/material.dart';

class FriendListCard extends StatelessWidget {
  const FriendListCard({
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
                          child: Stack(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: FittedBox(
                                      child: textTitle('Kusal Janith perera'),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Container(
                                    width: 10,
                                    decoration: const BoxDecoration(
                                      color: Colors.greenAccent,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 2,
                          child: FittedBox(
                            child: textSubTitle('1 min ago'),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                  ),

                  //* time view
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              const Spacer(flex: 1),
                              Expanded(
                                flex: 5,
                                child: PhysicalModel(
                                  borderRadius: BorderRadius.circular(20),
                                  elevation: 10,
                                  color: const Color(0xFFAA77FF),
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFFC9EEFF),
                                          Color(0xFFAA77FF),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: FittedBox(
                                        child: textSubTitle('CHAT'),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(flex: 1),
                            ],
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ),
                  // const Spacer(flex: 1),
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
