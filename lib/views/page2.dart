import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  var names = ["Uma", "Sashi", "Kenny", "Bobby", "July", "Hima"];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
            itemCount: names.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Card(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://i.pinimg.com/236x/3f/d0/d5/3fd0d516192d8a342ea8fd1cb9a63a01--street-style-fashion-fashion-looks.jpg"))),
                ),
              );
            }));
  }
}
