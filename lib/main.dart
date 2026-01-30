import 'package:flutter/material.dart';
import 'package:osama_rabie_c17/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.routName,
      routes: {
        Home.routName:(context)=>Home(),
      },
    );
  }
}