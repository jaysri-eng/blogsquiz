import 'package:blogsquiz/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {

  Num num = Num();
  NumOne numOne = NumOne();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers - quiz',style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 17,
          color: Colors.black,
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              child: num.getQuestion(),
            ),
            TextButton(
              onPressed: (){},
              child: Text(num.getAns(),style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),),
            ),
            TextButton(
              onPressed: (){},
              child: Text(numOne.getAns(),style: const TextStyle(
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
