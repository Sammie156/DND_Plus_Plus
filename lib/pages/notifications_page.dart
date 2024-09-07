import 'package:flutter/material.dart';

/// Notification Page for seeing the captured notifications
class NotificationsPage extends StatelessWidget {
  // TODO: Capture notifications and display them here.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications Page",
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
