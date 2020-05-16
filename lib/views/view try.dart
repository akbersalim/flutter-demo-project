import 'package:flutter/material.dart';

class Try extends StatefulWidget {
  Try(this.name, this.pass);

  var name, pass;

  @override
  _TryState createState() => _TryState();
}

class _TryState extends State<Try> {
  TextEditingController t = TextEditingController();
  var _x;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: t,
                ),
                RaisedButton(
                  onPressed: (){
                    setState(() {
                      _x=t.text;
                    });
                  },
                ),
                Text(_x.toString())
              ],
            ),
          ),
        ));
  }
}
