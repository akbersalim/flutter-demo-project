import 'package:flutter/material.dart';
import 'package:fluttermbcetapp/views/page1.dart';
import 'package:fluttermbcetapp/views/page2.dart';
import 'package:fluttermbcetapp/views/page3.dart';
import 'package:fluttermbcetapp/views/page4.dart';
import 'package:fluttermbcetapp/views/viewall.dart';

class MyMenu extends StatefulWidget {
  MyMenu(this.name, this.pass);

  var name, pass;

  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  var _mycurrentindex = 0;
  var currentpage = [Page1(), Page2(), ViewBody(), Page4()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: currentpage[_mycurrentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _mycurrentindex,
          selectedFontSize: 15.0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_list),
                title: Text("View All"),
                backgroundColor: Colors.greenAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("Search"),
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.edit),
                title: Text("Edit"),
                backgroundColor: Colors.purpleAccent)
          ],
          onTap: (index) {
            setState(() {
              _mycurrentindex = index;
            });
          },
        ),
      ),
    );
  }
}
