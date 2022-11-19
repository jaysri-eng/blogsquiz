import 'package:blogsquiz/data.dart';
import 'package:flutter/material.dart';

class Alphabet extends StatefulWidget {
  const Alphabet({Key? key}) : super(key: key);

  @override
  _AlphabetState createState() => _AlphabetState();
}

class _AlphabetState extends State<Alphabet> {

  AlpOne alpOne = AlpOne();
  Alp alp = Alp();

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
