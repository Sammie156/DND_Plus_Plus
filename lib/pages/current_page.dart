import 'package:dnd_plus_plus/pages/applications_page.dart';
import 'package:dnd_plus_plus/pages/home_page.dart';
import 'package:dnd_plus_plus/pages/notifications_page.dart';
import 'package:flutter/material.dart';

/// Home Page of the DND++
///
class CurrentPage extends StatelessWidget {
  CurrentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
    );
  }
}
