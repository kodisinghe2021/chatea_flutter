import 'package:chatea_app/constant.dart';
import 'package:chatea_app/view/screens/first_flow_screen/auth/widgets/login_button.dart';
import 'package:chatea_app/view/screens/first_flow_screen/auth/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class LoginSreen extends StatefulWidget {
  LoginSreen({super.key});

  @override
  State<LoginSreen> createState() => _LoginSreenState();
}

class _LoginSreenState extends State<LoginSreen> {
  final TextEditingController _email =
      TextEditingController();

  final TextEditingController _password =
      TextEditingController();

  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: screenSize(context).width,
            height: screenSize(context).height,
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      // const Spacer(flex: 1),
                      Expanded(
                        flex: 2,
                        child: CustomTextfield(
                          label: 'Email',
                          controller: _email,
                        ),
                      ),
                      //const SizedBox(height: 20),
                      CustomTextfield(
                        label: 'Password',
                        controller: _password,
                        isObsecure: !visibility,
                        prefix: const Icon(
                          Icons.key_outlined,
                          color: Colors.blueAccent,
                        ),
                        suffix: visibility
                            ? const Icon(
                                Icons.visibility_outlined,
                                color: Colors.blueAccent,
                              )
                            : const Icon(
                                Icons.visibility_off_outlined,
                              ),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            const Spacer(flex: 5),
                            Expanded(
                              flex: 2,
                              child: LoginButton(
                                onTap: () {
                                  print('login');
                                  Logger().i(
                                      'email: ${_email.text}  -- password: ${_password.text}');
                                },
                              ),
                            ),
                            const Spacer(flex: 1),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      //  color: Colors.blue,
                      ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      //  color: Colors.red,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
