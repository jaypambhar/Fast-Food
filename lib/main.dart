import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/view/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Merienda",
      ),
      
      home: LoginPage(),
    );
  }
}
