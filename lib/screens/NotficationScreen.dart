import 'package:flutter/material.dart';
import 'package:rahand3/bottom_navigation.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Bottom_navbar(
        indexpage: 3,
      ),
      body: const Center(
        child: Text('Notfication Screen'),
      ),
    );
  }
}
