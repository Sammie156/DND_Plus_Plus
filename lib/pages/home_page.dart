import 'package:dnd_plus_plus/pages/applications_page.dart';
import 'package:dnd_plus_plus/pages/notifications_page.dart';
import 'package:flutter/material.dart';

/// Home Page of the DND++
///
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final IconData appIcon = Icons.arrow_outward;
  final IconData notifIcon = Icons.notifications;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                label: Text("Show Apps",
                    style: TextStyle(
                      color: Colors.green[900],
                    )),
                icon: Icon(appIcon),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ApplicationsPage(),
                    ),
                  );
                },
              ),
              const SizedBox(width: 5),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                label: Text("Show Notifications",
                    style: TextStyle(color: Colors.grey[900])),
                icon: Icon(notifIcon, color: Colors.grey[900]),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationsPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Home Page",
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

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Something else"),
      ),
    );
  }
}
