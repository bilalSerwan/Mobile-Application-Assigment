import 'package:flutter/material.dart';
import 'package:rahand3/screens/homescreen.dart';
import 'package:rahand3/screens/favoriteScreen.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';

class Bottom_navbar extends StatefulWidget {
  CircularBottomNavigationController navigationController;
  int indexpage;
  Bottom_navbar(
      {required this.navigationController, required this.indexpage, super.key});
  @override
  State<Bottom_navbar> createState() => _Bottom_navbarState();
}

class _Bottom_navbarState extends State<Bottom_navbar> {
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
      controller: widget.navigationController,
      selectedPos: widget.indexpage,
      selectedCallback: (int? selectedPos) {
        setState(() {
          if (selectedPos == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(
                  indexpage: 0,
                ),
              ),
            );
          }
          if (selectedPos == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FavoriteScreen(
                  indexpage: 1,
                ),
              ),
            );
          }
          if (selectedPos == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FavoriteScreen(
                  indexpage: 1,
                ),
              ),
            );
          }
          if (selectedPos == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FavoriteScreen(
                  indexpage: 1,
                ),
              ),
            );
          }
        });
      },
    );
  }
}
