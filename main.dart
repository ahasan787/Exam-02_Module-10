import 'package:flutter/material.dart';
import 'package:flutter_application_1/exam_ostad.dart';

void main() {
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exam Ostad Task',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.amberAccent,
      ),
      home: examostad(),
    );
  }
}
