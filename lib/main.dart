import 'package:flutter/material.dart';
import 'package:movie_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}
// cod.lizzy on instagram
// codlizzy on GitHub

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
