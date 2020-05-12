import 'package:flutter/material.dart';

class ViewAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: ListView.builder(itemBuilder: (context,index){

          }),
        ),
      ),
    );
  }
}
