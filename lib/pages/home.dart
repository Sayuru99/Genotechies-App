import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:genotechies_app/provider/google.dart';
import 'package:genotechies_app/widget/background.dart';
import 'package:genotechies_app/widget/login.dart';
import 'package:genotechies_app/widget/signup.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
          child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context);

              if (provider.isSigningIn) {
                return buildLoading();
              } else if (snapshot.hasData) {
                return const LoggedInWidget();
              } else {
                return const SignUpWidget();
              }
            },
          ),
        ),
      );

  Widget buildLoading() => Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: BackgroundPainter()),
          const Center(child: CircularProgressIndicator()),
        ],
      );
}
