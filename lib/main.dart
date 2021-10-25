import 'package:flutter/material.dart';
import 'package:grocery_app/screens/welcome_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: AnimatedSplashScreen(
        splash: const Image(
          image: AssetImage('images/logo1.png'),
        ),
        backgroundColor: Colors.amber,
        splashTransition: SplashTransition.slideTransition,
        duration: 4500,
        splashIconSize: 300.0,
        nextScreen: const WelcomeScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
