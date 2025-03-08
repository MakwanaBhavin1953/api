import 'package:apifetching/Screen/Login_Screen.dart';
import 'package:apifetching/Screen/Post_Screen.dart';
import 'package:apifetching/Screen/Sign_Screen.dart';
import 'package:apifetching/Screen/Splace_Screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}