import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screen/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter travel uI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primaryColor:Color(0xFF3EBACE),
       accentColor:Color(0xFFDBECF1) ,
       scaffoldBackgroundColor:Color(0xFFF3F5F7),
       ),
       home: HomeScreen(),
    ); 
}
}
