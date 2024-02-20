import 'package:flutter/material.dart';
import 'package:project/home_page.dart';
import 'package:project/log_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppstate();
}

class _MyAppstate extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
   return const MaterialApp(
    home: Scaffold(
      body: Log_in(),
    ),
   );
  }
 
}
