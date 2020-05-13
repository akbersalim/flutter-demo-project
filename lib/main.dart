import 'package:flutter/material.dart';
import 'package:fluttermbcetapp/views/display.dart';
import 'package:fluttermbcetapp/views/signin.dart';
import 'package:fluttermbcetapp/views/viewandadd.dart';

void main() => runApp(MBCET("admin", "12345"));

class MBCET extends StatelessWidget {
  MBCET(this.name, this.pass);

  var name, pass;

  /*var details = [
    {"name": "admin", "pass": "12345"}
  ];*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink,
            leading: Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
            title: Text(
              "WELCOME",
              style: TextStyle(
                  letterSpacing: 3.0, fontSize: 25.0, color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: LogIn(name, pass)),
    );
  }
}

class LogIn extends StatelessWidget {
  LogIn(this.name, this.pass);

  var name, pass;

  TextEditingController nam = TextEditingController();
  TextEditingController pas = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: nam,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_circle),
                hintText: "Name",
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            controller: pas,
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                hintText: "Password:",
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () {
              print("hello");
              var na = nam.text;
              var pa = pas.text;
              print(na);
              if (name == na && pass == pa) {
                print("Login Successful");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewAll(name, pass)),
                );
              } else {
                print("Wrong UserName or Passord");
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>Display(name, pass, "wrong password "+name)
                ));
              }
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10.0)),
              height: 50.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  "LOG IN",
                  style: TextStyle(fontSize: 23.0, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () {
              print("Signing Up");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyLogin(name, pass)),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10.0)),
              height: 50.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 23.0, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
