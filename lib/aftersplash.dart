import 'package:blogsquiz/alphabet.dart';
import 'package:blogsquiz/number.dart';
import 'package:flutter/material.dart';

class AfterSplash extends StatelessWidget {
  const AfterSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BlogQuiz",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 17),),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 160,
                width: MediaQuery.of(context).size.width/1.3,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange[500],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //Text('You scored ${count.cnt} in your last attempt!',style: GoogleFonts.nunito(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold)),
                            const Text('Alphabets',style: TextStyle(
                                fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Alphabet()));
                              },
                              child: const Text('Start Quiz!',style: TextStyle(
                                  color: Colors.orange,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(image: AssetImage('assets/alphabet-icon.png'),height: 70,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 160,
                width: MediaQuery.of(context).size.width/1.3,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //Text('You scored ${DBProvider.db.getClient(c.cnt)} in your last attempt!',style: GoogleFonts.nunito(fontSize: 8,color: Colors.white,fontWeight: FontWeight.bold)),
                            const Text('Numbers',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Number()));
                              },
                              child: const Text('Start Quiz!',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold
                                ),),
                            )
                          ],
                        ),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(image: AssetImage('assets/Numbers-1-Black-icon.png'),height: 70,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}