import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'aftersplash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: AfterSplash(),
      title: const Text(
        'BlogQuiz',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
      image: Image.asset('assets/sleuth_logo.png'),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
    );
  }
}




