import 'package:flutter/material.dart';
import 'package:kfc/HomeScreen.dart';
import 'package:flutter/services.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor:Colors.grey.shade300,

  ));
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}