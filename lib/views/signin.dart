import 'package:flutter/material.dart';
import 'package:fluttermbcetapp/main.dart';

class MyLogin extends StatelessWidget {
  MyLogin(this.name, this.pass);

  var name, pass;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SignIn(name, pass)),
    );
  }
}

class SignIn extends StatelessWidget {
  SignIn(this.name, this.pass);

  var name, pass;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController rollnocontroller = TextEditingController();
  TextEditingController admnocontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController usercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurpleAccent, Colors.deepOrangeAccent])),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 200.0),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(75.0),
                      topRight: Radius.circular(75.0))),
              height: MediaQuery.of(context).size.height - 200,
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 70.0,
                      ),
                      TextField(
                        controller: namecontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                            hintText: "Enter Name"),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        keyboardType: TextInputType.numberWithOptions(),
                        controller: rollnocontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                            hintText: "Enter Roll No:"),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        keyboardType: TextInputType.numberWithOptions(),
                        controller: admnocontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                            hintText: "Enter Admission No:"),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        controller: usercontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                            hintText: "Enter Username"),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        controller: passcontroller,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                            hintText: "Enter Password"),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          var getName = namecontroller.text;
                          var getRoll = rollnocontroller.text;
                          var getAdno = admnocontroller.text;
                          var getUser = usercontroller.text;
                          var getPass = passcontroller.text;
                          print(getName);
                          print(getRoll);
                          print(getAdno);
                          print(getUser);
                          print(getPass);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MBCET(getName, getPass)));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.purple, Colors.orange]),
                              borderRadius: BorderRadius.circular(12.0)),
                          height: 55.0,
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              "REGISTER",
                              style: TextStyle(
                                  fontSize: 23.0, color: Colors.white),
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
                          print("Hello");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MBCET(name, pass)));
                        },
                        child: InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.purple, Colors.orange]),
                                borderRadius: BorderRadius.circular(12.0)),
                            height: 55.0,
                            width: double.infinity,
                            child: Center(
                              child: Text(
                                "BACK TO HOMEPAGE",
                                style: TextStyle(
                                    fontSize: 23.0, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
