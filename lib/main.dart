import 'package:flutter/material.dart';
import 'package:fluttermbcetapp/views/login.dart';
import 'package:fluttermbcetapp/views/register.dart';

void main() => runApp(MBCET());

class MBCET extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Register()),
    );
  }
}
