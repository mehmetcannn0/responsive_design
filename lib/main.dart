import 'package:flutter/material.dart';
import 'package:responsive_design/home_page.dart';

// https://www.youtube.com/watch?v=MrPJBAOzKTQ&ab_channel=MitchKoko
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
