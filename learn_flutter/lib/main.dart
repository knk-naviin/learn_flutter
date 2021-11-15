import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'UserRegistration.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LearnFlutter(),
  ));
}

class LearnFlutter extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff08c8f6), Color(0xff4d5dfb)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Center(
          child: Text(
            'Learn Flutter',
            style:  TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = linearGradient),
          ),
        ),
        pageTransitionType: PageTransitionType.fade,
        nextScreen: UserRegistration(),
        splashTransition: SplashTransition.fadeTransition,
      )
    );
  }
}
