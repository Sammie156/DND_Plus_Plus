import 'package:dnd_plus_plus/pages/applications_page.dart';
import 'package:dnd_plus_plus/pages/notifications_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        title: Center(
          child: Text(
            "Home Page",
            style: TextStyle(
              color: Colors.amber[200],
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
              icon:
                  const Icon(Icons.settings_applications, color: Colors.black),
              label: const Text(
                "Applications Page",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).push(_createRoute(ApplicationsPage()));
              },
            ),
            const SizedBox(
              width: 10.0,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
              icon: const Icon(
                Icons.notifications_active,
                color: Colors.black,
              ),
              label: const Text(
                "Check notifications",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  _createRoute(NotificationsPage()),
                );
              },
            )
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 31, 30, 30),
    );
  }
}

/// Creates Animations
Route _createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;

      var curve = Curves.ease;
      var curveTween = CurveTween(curve: curve);

      final tween = Tween(begin: begin, end: end).chain(curveTween);
      final offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
