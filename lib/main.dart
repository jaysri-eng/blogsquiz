import 'package:blogsquiz/number.dart';
import 'package:blogsquiz/signin.dart';
import 'package:blogsquiz/yt.dart';
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
      home: SignIn(),
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

class Snack extends StatelessWidget {
  const Snack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbar'),),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(image: AssetImage('assets/img.png')),
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(5),
            right: Radius.circular(5),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 5,
            ),
          ],
          /*borderRadius: BorderRadius.vertical(
            top: Radius.circular(10),
            bottom: Radius.circular(10),
          )*/
          //borderRadius: BorderRadius.all(Radius.elliptical(10,10)),
          //borderRadius: BorderRadius.vertical()
          ),
        child: TextButton(
          child: Text('Click me'),
          onPressed: (){
            Navigator.pushNamed(
              context,
              '/route',//route name goes here
            );
          },
        ),
      ),
    );
  }
}
//Navigator.push(context, MaterialPageRoute(builder: (context) => Number()));


class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/second': (context) => Snack(),
      },
      home: MyApp(),
    );
  }
}


class RowCol extends StatelessWidget {
  const RowCol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: const [
              Text('hi'),
            ],
          ),
          Column(
            children: const [
              Text('hi'),
            ],
          ),
          Column(
            children: const [
              Text('hi'),
            ],
          ),
        ],
      ),
    );
  }
}

class Summa extends StatelessWidget {
  const Summa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  color: Colors.yellow,
                  height: 100,
                ),
                Container(
                  color: Colors.green,
                  height: 100,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.green,
            height:50,),
          Container(
            color: Colors.yellow,
            height:50,),
          Container(
            color: Colors.red,
            height:50,),
        ],
      ),
    );
  }
}



