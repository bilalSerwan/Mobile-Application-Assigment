// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:rahand3/Worker.dart';
import 'package:rahand3/bottom_navigation.dart';
import 'package:rahand3/drawer.dart';
import 'package:rahand3/screens/profileScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  int imageindex = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const DraweR(),
      appBar: AppBar(
        backgroundColor: const Color(0xff006C71),
        title: const Icon(
          IonIcons.location,
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    width: width * 0.92,
                    height: height * 0.18,
                    child: Stack(
                      children: [
                        CarouselSlider(
                          items: [
                            CardImageOfSlider(
                              imagepath: 'images/sliderimages/image1.jpg',
                            ),
                            CardImageOfSlider(
                              imagepath: 'images/sliderimages/image2.jpg',
                            ),
                            CardImageOfSlider(
                              imagepath: 'images/sliderimages/image3.jpg',
                            ),
                            CardImageOfSlider(
                              imagepath: 'images/sliderimages/image4.jpg',
                            ),
                          ],
                          options: CarouselOptions(
                            onPageChanged: (x, y) {
                              setState(() {
                                imageindex = x;
                              });
                            },
                            autoPlay: true,
                            height: height * 0.22,
                            enlargeCenterPage: true,
                            viewportFraction: 1.3,
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: width * 0.35,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: imageindex == 0
                                        ? Colors.red
                                        : Colors.grey,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))),
                              ),
                              Container(
                                margin: const EdgeInsets.all(5),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: imageindex == 1
                                      ? Colors.red
                                      : Colors.grey,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(5),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: imageindex == 2
                                        ? Colors.red
                                        : Colors.grey,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))),
                              ),
                              Container(
                                margin: const EdgeInsets.all(5),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: imageindex == 3
                                        ? Colors.red
                                        : Colors.grey,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  //Best Of month
                  Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Best Of Month',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'more',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              width: width,
                              height: height,
                              name: WorkeR.workerList[0].name,
                              imagepath: WorkeR.workerList[0].imagepath,
                              phonenumber: WorkeR.workerList[0].phonenumber,
                              occupation: WorkeR.workerList[0].occupation,
                            ),
                            Card(
                              width: width,
                              height: height,
                              name: WorkeR.workerList[1].name,
                              imagepath: WorkeR.workerList[1].imagepath,
                              phonenumber: WorkeR.workerList[1].phonenumber,
                              occupation: WorkeR.workerList[1].occupation,
                            ),
                            Card(
                              width: width,
                              height: height,
                              name: WorkeR.workerList[2].name,
                              imagepath: WorkeR.workerList[2].imagepath,
                              phonenumber: WorkeR.workerList[2].phonenumber,
                              occupation: WorkeR.workerList[2].occupation,
                            ),
                            Card(
                              width: width,
                              height: height,
                              name: WorkeR.workerList[3].name,
                              imagepath: WorkeR.workerList[3].imagepath,
                              phonenumber: WorkeR.workerList[3].phonenumber,
                              occupation: WorkeR.workerList[3].occupation,
                            ),
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'New Members',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'more',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Card(
                              width: width,
                              height: height,
                              name: WorkeR.workerList[4].name,
                              imagepath: WorkeR.workerList[4].imagepath,
                              phonenumber: WorkeR.workerList[4].phonenumber,
                              occupation: WorkeR.workerList[4].occupation,
                            ),
                            Card(
                              width: width,
                              height: height,
                              name: WorkeR.workerList[5].name,
                              imagepath: WorkeR.workerList[5].imagepath,
                              phonenumber: WorkeR.workerList[5].phonenumber,
                              occupation: WorkeR.workerList[5].occupation,
                            ),
                            Card(
                              width: width,
                              height: height,
                              name: WorkeR.workerList[6].name,
                              imagepath: WorkeR.workerList[6].imagepath,
                              phonenumber: WorkeR.workerList[6].phonenumber,
                              occupation: WorkeR.workerList[6].occupation,
                            ),
                            Card(
                              width: width,
                              height: height,
                              name: WorkeR.workerList[7].name,
                              imagepath: WorkeR.workerList[7].imagepath,
                              phonenumber: WorkeR.workerList[7].phonenumber,
                              occupation: WorkeR.workerList[7].occupation,
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 10,
                        color: Colors.grey,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Populer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'more',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Card(
                              width: width,
                              height: height,
                              name: WorkeR.workerList[8].name,
                              imagepath: WorkeR.workerList[8].imagepath,
                              phonenumber: WorkeR.workerList[8].phonenumber,
                              occupation: WorkeR.workerList[8].occupation,
                            ),
                            Card(
                              width: width,
                              height: height,
                              name: WorkeR.workerList[11].name,
                              imagepath: WorkeR.workerList[11].imagepath,
                              phonenumber: WorkeR.workerList[11].phonenumber,
                              occupation: WorkeR.workerList[11].occupation,
                            ),
                            Card(
                              width: width,
                              height: height,
                              name: WorkeR.workerList[9].name,
                              imagepath: WorkeR.workerList[9].imagepath,
                              phonenumber: WorkeR.workerList[9].phonenumber,
                              occupation: WorkeR.workerList[9].occupation,
                            ),
                            Card(
                              width: width,
                              height: height,
                              name: WorkeR.workerList[10].name,
                              imagepath: WorkeR.workerList[10].imagepath,
                              phonenumber: WorkeR.workerList[10].phonenumber,
                              occupation: WorkeR.workerList[10].occupation,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Bottom_navbar(
              indexpage: 0,
            ),
          )
        ],
      ),
    );
  }
}

class CardImageOfSlider extends StatelessWidget {
  String imagepath;
  CardImageOfSlider({
    required this.imagepath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Image.asset(
          imagepath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  double width;
  double height;
  String imagepath;
  String name;
  String phonenumber;
  String occupation;
  Card({
    required this.height,
    required this.width,
    required this.imagepath,
    required this.name,
    required this.occupation,
    required this.phonenumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => profileScreen(
              imagepath: this.imagepath,
              phonenumber: this.phonenumber,
              occupation: this.occupation,
              name: this.name,
            ),
          ),
        );
      },
      child: Container(
        width: width * 0.33,
        height: height * 0.19,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(19),
          ),
          child: Column(
            children: [
              Image.asset(
                imagepath,
                fit: BoxFit.cover,
                height: height * 0.1,
                width: width * 0.33,
              ),
              Text(
                name,
                style: const TextStyle(color: Colors.blue),
              ),
              Text(
                'PhoneNumber:$phonenumber',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),
              ),
              Text(
                'occupation:$occupation',
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
