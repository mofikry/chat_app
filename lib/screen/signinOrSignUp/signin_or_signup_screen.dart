import 'package:chat_app/components/primary-button.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/screen/chat/chat_screen.dart';
import 'package:flutter/material.dart';

class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? 'assets/images/Logo_light.png'
                    : 'assets/images/Logo_dark.png',
                height: 146,
              ),
              const Spacer(),
              PrimaryButton(
                text: 'Sing In',
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatScreen(),
                  ),
                ),
              ),
              const SizedBox(
                height: kDefaultPadding * 1.5,
              ),
              PrimaryButton(
                text: 'Sing Up',
                press: () {},
                color: kSecondaryColor,
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
