import 'package:blogsquiz/data.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

AlpOne alpOne = AlpOne();
Alp alp = Alp();

class Alphabet extends StatefulWidget {
  const Alphabet({Key? key}) : super(key: key);

  @override
  _AlphabetState createState() => _AlphabetState();
}

class _AlphabetState extends State<Alphabet> {


  int countCorrectAns = 0;
  int totalNoOfQuestions = alp.getCount();

  void checkAnswer(BuildContext context, String userAns) {
    setState(() {
      if (alp.getAns() == userAns) {
        SnackBar(content: Title(
          child: const Text('Your answer was right'),
          color: Colors.black,
        ),);
        countCorrectAns++;
      } else {
        SnackBar(content: Title(
          child: const Text('Your answer was not right'),
          color: Colors.black,
        ),);
      }

      if (alp.isFin()) {
        if (countCorrectAns >= totalNoOfQuestions/2) {
          Alert(
            style: AlertStyle(
              titleStyle: const TextStyle(fontWeight: FontWeight.w600,fontSize: 15),
              descStyle: const TextStyle(fontWeight: FontWeight.w600,fontSize: 15),
            ),
            closeFunction: () => Navigator.pop(context),
            context: context,
            type: AlertType.success,
            title: "Hurray!",
            desc:
            "You scored $countCorrectAns/$totalNoOfQuestions questions correct! You are familiar with Sign language.",
            buttons: [
              DialogButton(
                child: Text(
                  "Exit the quiz",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                width: 200,
              )
            ],
          ).show();
        } else {
          Alert(
            closeFunction: () => Navigator.pop(context),
            context: context,
            type: AlertType.error,
            title: "Oh No!",
            desc:
            "You scored $countCorrectAns/$totalNoOfQuestions questions correct! I'm afraid you aren\'t much familiar with Sign Language.",
            buttons: [
              DialogButton(
                child: Text(
                  "Take Quiz Again",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                width: 200,
              )
            ],
          ).show();
        }

        alp.reset();
        alpOne.reset();
        countCorrectAns = 0;
      } else {
        alp.nextQuestion();
        alpOne.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alphabets - quiz", style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 17,
          color: Colors.black
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              child: alp.getQuestion(),
            ),
            TextButton(
              onPressed: (){},
              child: Text(alp.getAns(),style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),),
            ),
            TextButton(
              onPressed: (){},
              child: Text(alpOne.getAns(),style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
