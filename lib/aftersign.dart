import 'package:flutter/material.dart';

class AfterSign extends StatelessWidget {
  const AfterSign({Key? key,required this.username}) : super(key: key);
  final String username;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: Icon(Icons.menu,color: Colors.black,),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.person,color: Colors.black,),
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello, how are you',style: TextStyle(
                fontSize: 20,
              ),),
              Padding(padding: EdgeInsets.only(left: 5)),
              Text('$username',style: TextStyle(
                fontSize: 20
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
