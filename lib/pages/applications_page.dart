import 'package:flutter/material.dart';

class ApplicationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Applications Page",
          style: TextStyle(
            color: Colors.amber[200],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 31, 30, 30),
      ),
      backgroundColor: Colors.blueGrey[800],
    );
  }
}
