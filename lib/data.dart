import 'package:flutter/material.dart';

class Quiz{
  late Image numQ;
  late String numAns;
  Quiz(this.numQ,this.numAns);
}

class Alp{
  int qNo=0;
  final List<Quiz> _questions = [
    Quiz(Image.asset('assets/a.png'), "A"),
    Quiz(Image.asset('assets/b.png'), "B"),
    Quiz(Image.asset('assets/c.png'), "C"),
    Quiz(Image.asset('assets/d.png'), "D"),
    Quiz(Image.asset('assets/e.png'), "E"),
    Quiz(Image.asset('assets/f.png'), "F"),
    Quiz(Image.asset('assets/g.png'), "G"),
    Quiz(Image.asset('assets/h.png'), "H"),
    Quiz(Image.asset('assets/i.png'), "I"),
    Quiz(Image.asset('assets/j.png'), "J"),
  ];
  void nextQuestion(){
    if(qNo<_questions.length)
      qNo++;
  }
  Image getQuestion(){
    return _questions[qNo].numQ;
  }
  String getAns(){
    return _questions[qNo].numAns;
  }
  int getCount(){
    return _questions.length;
  }
  bool isFin(){
    if(qNo == _questions.length-1)
      return true;
    else
      return false;
  }
  void reset(){
    qNo=0;
  }
}

class AlpOne{
  int qNo=0;
  final List<Quiz> _questions = [
    Quiz(Image.asset('assets/j.png'), "J"),
    Quiz(Image.asset('assets/i.png'), "I"),
    Quiz(Image.asset('assets/h.png'), "H"),
    Quiz(Image.asset('assets/g.png'), "G"),
    Quiz(Image.asset('assets/f.png'), "F"),
    Quiz(Image.asset('assets/e.png'), "E"),
    Quiz(Image.asset('assets/d.png'), "D"),
    Quiz(Image.asset('assets/c.png'), "C"),
    Quiz(Image.asset('assets/b.png'), "B"),
    Quiz(Image.asset('assets/a.png'), "A"),
  ];
  void nextQuestion(){
    if(qNo<_questions.length)
      qNo++;
  }
  Image getQuestion(){
    return _questions[qNo].numQ;
  }
  String getAns(){
    return _questions[qNo].numAns;
  }
  int getCount(){
    return _questions.length;
  }
  bool isFin(){
    if(qNo == _questions.length-1)
      return true;
    else
      return false;
  }
  void reset(){
    qNo=0;
  }
}

class Num{
  int qNo=0;
  final List<Quiz> _ques = [
    Quiz(Image.asset('assets/1.png'), "One"),
    Quiz(Image.asset('assets/2.png'), "Two"),
    Quiz(Image.asset('assets/3.png'), "Three"),
    Quiz(Image.asset('assets/4.png'), "Four"),
    Quiz(Image.asset('assets/5.png'), "Five"),
    Quiz(Image.asset('assets/6.png'), "Six"),
    Quiz(Image.asset('assets/7.png'), "Seven"),
    Quiz(Image.asset('assets/8.png'), "Eight"),
    Quiz(Image.asset('assets/9.png'), "Nine"),
    Quiz(Image.asset('assets/10.png'), "Ten"),
  ];
  void nextQuestion(){
    if(qNo<_ques.length)
      qNo++;
  }
  Image getQuestion(){
    return _ques[qNo].numQ;
  }
  String getAns(){
    return _ques[qNo].numAns;
  }
  int getCount(){
    return _ques.length;
  }
  bool isFin(){
    if(qNo == _ques.length-1) {
      return true;
    } else {
      return false;
    }
  }
  void reset(){
    qNo=0;
  }
}

class NumOne{
  int qNo=0;
  final List<Quiz> _ques = [
    Quiz(Image.asset('assets/10.png'), "Ten"),
    Quiz(Image.asset('assets/9.png'), "Nine"),
    Quiz(Image.asset('assets/8.png'), "Eight"),
    Quiz(Image.asset('assets/7.png'), "Seven"),
    Quiz(Image.asset('assets/6.png'), "Six"),
    Quiz(Image.asset('assets/5.png'), "Five"),
    Quiz(Image.asset('assets/4.png'), "Four"),
    Quiz(Image.asset('assets/3.png'), "Three"),
    Quiz(Image.asset('assets/2.png'), "Two"),
    Quiz(Image.asset('assets/1.png'), "One"),
  ];
  void nextQuestion(){
    if(qNo<_ques.length)
      qNo++;
  }
  Image getQuestion(){
    return _ques[qNo].numQ;
  }
  String getAns(){
    return _ques[qNo].numAns;
  }
  int getCount(){
    return _ques.length;
  }
  bool isFin(){
    if(qNo == _ques.length-1) {
      return true;
    } else {
      return false;
    }
  }
  void reset(){
    qNo=0;
  }
}
