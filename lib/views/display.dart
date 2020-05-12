import 'package:flutter/material.dart';
import 'package:fluttermbcetapp/main.dart';

class Display extends StatelessWidget {
  Display(this.name,this.pass,this.t);
  var name,pass,t;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context)=>MBCET(name, pass)
          ));
        },
        child: Scaffold(
          body: Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(child: Text((t+"\nTap Anywhere to return")))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
