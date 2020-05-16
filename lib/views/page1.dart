import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
            Text(
                "Page1",
                style: TextStyle(fontSize: 30.0),

            ),
            RaisedButton(
              onPressed: (){
                final message=SnackBar(
                  content: Text("Hey"),
                );
                Scaffold.of(context).showSnackBar((message));
              },
              child: Text("Message display"),
            )
          ]),
    );
  }
}