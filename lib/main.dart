import 'package:flutter/material.dart';
import 'package:smart_farm/welcome_page/welcome_page_1.dart';

// ignore: constant_identifier_names
const Color d_green = Color.fromARGB(255, 58, 128, 50);
// ignore: constant_identifier_names
const Color d_purple = Color.fromARGB(255, 74, 87, 131);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Smart Farm',
        home: WelcomePage());
  }
}
