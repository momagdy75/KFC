import 'package:flutter/material.dart';
import 'package:kfc/MainHome.dart';
import 'AnimatedDrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [AnimatedDrawer(), MainHome()],
    ));
  }
}
