import 'package:flutter/material.dart';

/// Notification Page for seeing the captured notifications
class NotificationsPage extends StatelessWidget {
  /// Notifications Page
  /// Shows the notifications that have been captured by the application <br>
  /// The notifications captured from the apps are set by the user, and <br>
  /// also checks the captured text on how important the notification is. <br>
  NotificationsPage({super.key});

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
