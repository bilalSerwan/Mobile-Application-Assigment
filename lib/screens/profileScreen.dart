// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class profileScreen extends StatelessWidget {
  String name;
  String imagepath;
  String phonenumber;
  String occupation;
  profileScreen(
      {required this.imagepath,
      required this.name,
      required this.occupation,
      required this.phonenumber,
      super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Color(0xff006C71),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: const Center(
          child: Icon(
            Icons.call,
            color: Colors.white,
            size: 70,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.38,
            width: width,
            child: Stack(
              children: [
                Image.asset(
                  'images/map.jpg',
                  width: double.infinity,
                  height: height * 0.25,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 40,
                      color: Color(0xff006C71),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: width * 0.45,
                  child: Container(
                    width: width * 0.15,
                    height: height * 0.055,
                    decoration: const BoxDecoration(
                        color: Color(0xff006C71),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: IconButton(
                      onPressed: () {
                        print('favorite');
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: width * 0.11,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage(imagepath),
                  ),
                ),
                Positioned(
                  right: height * 0.04,
                  bottom: 0,
                  child: Column(
                    children: [
                      Text(
                        'ناو: $name',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'ژمارەی مۆبایل:$phonenumber',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'پیشە: $occupation',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 10,
            color: Colors.grey,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ئەلبومی کارەکانم',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'زیاتر ببینە',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(
            width: width,
            height: height * 0.16,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AlbumCard(
                    width: width,
                    height: height,
                    imagepath: 'images/sliderimages/image4.jpg',
                  ),
                  AlbumCard(
                    width: width,
                    height: height,
                    imagepath: 'images/sliderimages/image3.jpg',
                  ),
                  AlbumCard(
                    width: width,
                    height: height,
                    imagepath: 'images/sliderimages/image2.jpg',
                  ),
                  AlbumCard(
                    width: width,
                    height: height,
                    imagepath: 'images/sliderimages/image1.jpg',
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            height: 10,
            color: Colors.grey,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'دەنگدان',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: Colors.black,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xff006C71),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff006C71),
                  ),
                  Icon(
                    Icons.star_border,
                    color: Color(0xff006C71),
                  ),
                  Icon(
                    Icons.star_border,
                    color: Color(0xff006C71),
                  ),
                  Icon(
                    Icons.star_border,
                    color: Color(0xff006C71),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 100,
                height: 50,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xff006C71),
                    ),
                  ),
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(Icons.check_circle),
                      SizedBox(width: 4),
                      Text('دەنگدان'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                height: 15,
                color: Colors.grey,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff006C71),
                    child: Icon(
                      Icons.facebook,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff006C71),
                    child: Icon(
                      FontAwesome.instagram,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff006C71),
                    child: Icon(
                      Icons.snapchat,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff006C71),
                    child: Icon(
                      Icons.tiktok,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AlbumCard extends StatelessWidget {
  const AlbumCard({
    super.key,
    required this.width,
    required this.height,
    required this.imagepath,
  });

  final double width;
  final double height;
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Image.asset(
          imagepath,
          width: width * 0.26,
          height: height * 0.15,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
