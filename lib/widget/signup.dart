import 'package:flutter/material.dart';
import 'package:genotechies_app/widget/background.dart';
import 'package:genotechies_app/widget/google_signup.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: BackgroundPainter()),
          buildSignUp(),
        ],
      );

  Widget buildSignUp() => Column(
        children: [
          const Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: 175,
              child: const Text(
                'Welcome To Genotechies',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Spacer(),
          const GoogleSignupButtonWidget(),
          const SizedBox(height: 12),
          const Text(
            'Login to Genotechies',
            style: TextStyle(fontSize: 16),
          ),
          const Spacer(),
        ],
      );
}
