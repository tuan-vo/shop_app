import 'package:flutter/material.dart';
import 'package:shop_app/views/shared/appstyle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('This is Home Page', style: appstyle(30, Colors.black, FontWeight.bold),),),
    );
  }
}