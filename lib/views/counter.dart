import 'package:flutter/material.dart';

class MyCounterApp extends StatefulWidget {
  MyCounterApp(this.name, this.pass);

  var name, pass;

  @override
  _MyCounterAppState createState() => _MyCounterAppState();
}

class _MyCounterAppState extends State<MyCounterApp> {
  var _counter = 0;

  void _Increment() {
    setState(() {
      _counter++;
    });
  }

  void _Decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/background image.jpeg"),
                    fit: BoxFit.cover)),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          _Increment();
                        },
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        _counter.toString(),
                        style: TextStyle(fontSize: 30.0),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FlatButton(
                        onPressed: () {
                          _Decrement();
                        },
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
