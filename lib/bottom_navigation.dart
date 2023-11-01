// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:rahand3/screens/NotficationScreen.dart';
import 'package:rahand3/screens/homescreen.dart';
import 'package:rahand3/screens/favoriteScreen.dart';
import 'package:rahand3/screens/nearbbyScreen.dart';

class Bottom_navbar extends StatefulWidget {
  int indexpage;
  Bottom_navbar({required this.indexpage, super.key});
  @override
  State<Bottom_navbar> createState() => _Bottom_navbarState();
}

class _Bottom_navbarState extends State<Bottom_navbar> {
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color.fromARGB(0, 0, 0, 0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: const BoxDecoration(
                color: Color(0xff016A70),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    indexpage: widget.indexpage,
                    currentpage: 0,
                    onpress: () {
                      setState(() {
                        widget.indexpage = 0;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      });
                    },
                    icon: Icons.home,
                    title: 'Home',
                  ),
                  Card(
                    indexpage: widget.indexpage,
                    currentpage: 1,
                    onpress: () {
                      setState(() {
                        widget.indexpage = 1;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FavoriteScreen()));
                      });
                    },
                    icon: Icons.favorite,
                    title: 'Favorite',
                  ),
                  Card(
                    indexpage: widget.indexpage,
                    currentpage: 2,
                    onpress: () {
                      setState(() {
                        widget.indexpage = 2;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NearByScreen(),
                          ),
                        );
                      });
                    },
                    icon: Icons.language,
                    title: 'Nearby',
                  ),
                  Card(
                    indexpage: widget.indexpage,
                    currentpage: 3,
                    onpress: () {
                      setState(() {
                        widget.indexpage = 3;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationScreen()));
                      });
                    },
                    icon: Icons.notifications_active_outlined,
                    title: 'notification',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card(
      {super.key,
      required this.indexpage,
      required this.currentpage,
      required this.onpress,
      required this.icon,
      required this.title});

  final int indexpage;
  final int currentpage;
  final void Function() onpress;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: indexpage != currentpage ? 25 : 0, bottom: 6),
      child: Column(
        children: [
          TextButton(
            onPressed: onpress,
            child: Container(
              width: indexpage != currentpage ? 30 : 50,
              height: indexpage != currentpage ? 30 : 50,
              decoration: BoxDecoration(
                  border: indexpage == currentpage
                      ? Border.all(
                          color: Colors.white,
                          width: 3,
                        )
                      : null,
                  color: const Color(0xff016A70),
                  borderRadius: BorderRadius.all(indexpage != currentpage
                      ? const Radius.circular(30)
                      : const Radius.circular(50))),
              child: Icon(
                icon,
                color: Colors.white,
                size: 26,
              ),
            ),
          ),
          SizedBox(
            height: indexpage == currentpage ? 10 : 0,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
