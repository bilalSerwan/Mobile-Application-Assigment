import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:rahand3/Worker.dart';
import 'package:rahand3/bottom_navigation.dart';
import 'package:rahand3/drawer.dart';

class FavoriteScreen extends StatefulWidget {
  int indexpage;
  FavoriteScreen({required this.indexpage, super.key});
  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  late CircularBottomNavigationController _navigationController;
  @override
  void initState() {
    super.initState();
    _navigationController =
        CircularBottomNavigationController(widget.indexpage);
  }

  @override
  Widget build(BuildContext context) {
    List<WorkeR> favorite_list=[
    WorkeR(
        imagepath: 'images/workerimages/workerimage1.jpg',
        name: 'محمد شوان خدر',
        occupation: 'جامچی',
        phonenumber: '٠٧٥٠١٢٣٤٥٦٧'),
    WorkeR(
        imagepath: 'images/workerimages/workerimage2.jpg',
        name: 'محمد شوان خدر',
        occupation: 'جامچی',
        phonenumber: '٠٧٥٠١٢٣٤٥٦٧'),
    WorkeR(
        imagepath: 'images/workerimages/workerimage3.jpg',
        name: 'محمد شوان خدر',
        occupation: 'جامچی',
        phonenumber: '٠٧٥٠١٢٣٤٥٦٧'),
    WorkeR(
        imagepath: 'images/workerimages/workerimage4.jpg',
        name: 'محمد شوان خدر',
        occupation: 'جامچی',
        phonenumber: '٠٧٥٠١٢٣٤٥٦٧'),
    WorkeR(
        imagepath: 'images/workerimages/workerimage5.jpg',
        name: 'محمد شوان خدر',
        occupation: 'جامچی',
        phonenumber: '٠٧٥٠١٢٣٤٥٦٧'),
    WorkeR(
        imagepath: 'images/workerimages/workerimage6.jpg',
        name: 'محمد شوان خدر',
        occupation: 'جامچی',
        phonenumber: '٠٧٥٠١٢٣٤٥٦٧'),
    WorkeR(
        imagepath: 'images/workerimages/workerimage7.jpg',
        name: 'محمد شوان خدر',
        occupation: 'جامچی',
        phonenumber: '٠٧٥٠١٢٣٤٥٦٧'),
    WorkeR(
        imagepath: 'images/workerimages/workerimage8.jpg',
        name: 'محمد شوان خدر',
        occupation: 'جامچی',
        phonenumber: '٠٧٥٠١٢٣٤٥٦٧'),
    WorkeR(
        imagepath: 'images/workerimages/workerimage9.jpg',
        name: 'محمد شوان خدر',
        occupation: 'جامچی',
        phonenumber: '٠٧٥٠١٢٣٤٥٦٧'),
    WorkeR(
        imagepath: 'images/workerimages/workerimage10.jpg',
        name: 'محمد شوان خدر',
        occupation: 'جامچی',
        phonenumber: '٠٧٥٠١٢٣٤٥٦٧'),
    WorkeR(
        imagepath: 'images/workerimages/workerimage11.jpg',
        name: 'محمد شوان خدر',
        occupation: 'جامچی',
        phonenumber: '٠٧٥٠١٢٣٤٥٦٧'),
    WorkeR(
        imagepath: 'images/workerimages/workerimage12.jpg',
        name: 'محمد شوان خدر',
        occupation: 'جامچی',
        phonenumber: '٠٧٥٠١٢٣٤٥٦٧'),
  ];
    return Scaffold(
        bottomNavigationBar: Bottom_navbar(
            navigationController: _navigationController, indexpage: 1),
        backgroundColor: Colors.white,
        drawer: const DraweR(),
        appBar: AppBar(
          backgroundColor: const Color(0xff006C71),
          title: const Text(
            'Favorite',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: favorite_list.length - 2,
            itemBuilder: (context, index) {
              return FavoriteCard(
                imagepath: favorite_list[index].imagepath,
                name:favorite_list[index].name,
                phonenumber: favorite_list[index].phonenumber,
                keey: ValueKey<WorkeR>(favorite_list[index]),
                ondismissed: (dissmissid) {
                  setState(() {
                   favorite_list.removeAt(index);
                  });
                },
              );
            }));
  }
}

class FavoriteCard extends StatelessWidget {
  String imagepath;
  String name;
  String phonenumber;
  Key keey;
  void Function(DismissDirection) ondismissed;
  FavoriteCard({
    super.key,
    required this.ondismissed,
    required this.imagepath,
    required this.name,
    required this.phonenumber,
    required this.keey,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.endToStart,
      key: keey,
      onDismissed: ondismissed,
      background: Container(
        color: Colors.red,
        child: const Align(
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.remove,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'رەشکردن',
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
            ],
          ),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(imagepath),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'ناو: $name',
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'ژمارەی مۆبایل:$phonenumber',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
