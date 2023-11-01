// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:rahand3/screens/NotficationScreen.dart';
import 'package:rahand3/screens/homescreen.dart';
import 'package:rahand3/screens/favoriteScreen.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:rahand3/screens/nearbbyScreen.dart';

class Bottom_navbar extends StatefulWidget {
  int indexpage;
  Bottom_navbar({required this.indexpage, super.key});
  @override
  State<Bottom_navbar> createState() => _Bottom_navbarState();
}

class _Bottom_navbarState extends State<Bottom_navbar> {
  late CircularBottomNavigationController navigationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigationController = CircularBottomNavigationController(widget.indexpage);
  }

  @override
  Widget build(BuildContext context) {
    return CircularBottomNavigation(
      [
        TabItem(Icons.home, 'home', const Color(0xff006C71),
            circleStrokeColor: Colors.white),
        TabItem(Icons.favorite, 'home', const Color(0xff006C71),
            circleStrokeColor: Colors.white),
        TabItem(Icons.language, 'home', const Color(0xff006C71),
            circleStrokeColor: Colors.white),
        TabItem(Icons.notifications_active_outlined, 'home',
            const Color(0xff006C71),
            circleStrokeColor: Colors.white),
      ],
      barBackgroundColor: const Color(0xff006C71),
      controller: navigationController,
      selectedPos: widget.indexpage,
      selectedCallback: (int? selectedPos) {
        print('$selectedPos');
        setState(() {
          if (selectedPos == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          }
          if (selectedPos == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FavoriteScreen(),
              ),
            );
          }
          if (selectedPos == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NearByScreen(),
              ),
            );
          }
          if (selectedPos == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NotificationScreen(),
              ),
            );
          }
        });
      },
    );
  }
}
