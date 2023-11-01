import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class DraweR extends StatelessWidget {
  const DraweR({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Drawer(
      width: width * 0.55,
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    height: height * 0.3,
                    color: const Color(0xff006C71),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: CircleAvatar(
                            radius: 55,
                            backgroundColor: Colors.redAccent,
                            backgroundImage:
                                AssetImage('images/userimage/user.jpg'),
                          ),
                        ),
                        Text(
                          'ناو : محمد سیروان بکر',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'ژمارەی مۆبایل : ٠٧٥٠٣٧٢١٨١٩',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'عێراق / هەولێر',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.outbond,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'چونە ژوورەوە',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  const Divider(
                    height: 10,
                    color: Colors.grey,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.outbond,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'دەربارەی ئێمە',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.grey,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.outbond,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'پەیوەندیکردن بە ئێمە',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xff006C71),
                    child: Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xff006C71),
                    child: Icon(
                      FontAwesome.instagram,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xff006C71),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Icon(
                        IonIcons.logo_snapchat,
                        color: Color(0xff006C71),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
