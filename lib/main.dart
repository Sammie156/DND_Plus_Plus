import 'package:dnd_plus_plus/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Do Not Disturb++",
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green[200],
      ),
      home: const HomePage(), // TODO: Have a centralized Home Page.
    );
  }
}
