// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:uts_c14210093/card.dart';
import 'package:uts_c14210093/sec_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int curIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sydney CBD',
            style: TextStyle(fontWeight: FontWeight.bold),
            selectionColor: Color.fromRGBO(0, 0, 0, 1.0)),
        leading: const Icon(
          Icons.arrow_back_rounded,
          color: Color.fromRGBO(243, 210, 91, 1.0),
        ),
        surfaceTintColor: Colors.white,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: curIndex,
          onTap: (int newIndex) {
            setState(() {
              curIndex = newIndex;
            });
          },
          selectedItemColor: Color.fromRGBO(243, 210, 91, 1.0),
          unselectedItemColor: Color.fromRGBO(0, 0, 0, 1.0),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: 'Discovery',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              label: 'Bookmark',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events_outlined),
              label: 'Top Foodie',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
            ),
          ]),
      body: home(),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

var namaarr = ['KFC Broadway', 'Greek House', 'Demandailing Merr'];
var gambararr = [
  'assets/kfc.jpg',
  'assets/greekhouse.jpg',
  'assets/demandailing.jpg'
];
var alamatarr = ['122 Queen Street', '23 Queen Street', 'Jl. Merr 31'];
var tipearr = ['Fried Chicken, American', 'Burritos, Greek', 'Lemon, Lemon'];

var namaarr2 = ['Peperoni Pizza', 'Chicken Salted Egg', 'Chicken Katsu Curry'];
var gambararr2 = [
  'assets/pizza.jpg',
  'assets/saltedegg.png',
  'assets/katsu.jpg'
];
var alamatarr2 = ['123 Peroni Street', '24 Orchad Street', '99 Kyoto'];
var tipearr2 = [' ', ' ', ' '];

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search for restaurants...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                )),
            CarouselSlider(
              items: [
                Stack(children: [
                  Image.asset(
                    'assets/italifood.jpg',
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                      left: 10,
                      bottom: 35,
                      child: Text(
                        'Italian Sensation',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                  Positioned(
                      left: 10,
                      bottom: 20,
                      child: Text('11 Places',
                          style: TextStyle(color: Colors.white, fontSize: 16)))
                ]),
                Stack(children: [
                  Image.asset(
                    'assets/indianfood.jpg',
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                      left: 10,
                      bottom: 35,
                      child: Text(
                        'Golu Style',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                  Positioned(
                      left: 10,
                      bottom: 20,
                      child: Text('10 Places',
                          style: TextStyle(color: Colors.white, fontSize: 16)))
                ]),
                Stack(children: [
                  Image.asset(
                    'assets/padangfood.jpg',
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                      left: 10,
                      bottom: 35,
                      child: Text(
                        'Padang Favo',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                  Positioned(
                      left: 10,
                      bottom: 20,
                      child: Text('25 Places',
                          style: TextStyle(color: Colors.white, fontSize: 16)))
                ]),
                Stack(children: [
                  Image.asset(
                    'assets/thaifood.jpg',
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                      left: 10,
                      bottom: 35,
                      child: Text(
                        'Thailand Mantap',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                  Positioned(
                      left: 10,
                      bottom: 20,
                      child: Text('15 Places',
                          style: TextStyle(color: Colors.white, fontSize: 16)))
                ])
              ],
              options: CarouselOptions(
                height: MediaQuery.of(context).size.width * (9 / 16),
                aspectRatio: 16 / 9,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 6),
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                enableInfiniteScroll: true,
                scrollDirection: Axis.horizontal,
                pauseAutoPlayOnTouch: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Popular',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SeeAllScreen(
                                      judul: 'Most Popular',
                                      arrgambar: gambararr,
                                    )));
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: gambararr.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: cardresto(
                        gambar: gambararr[index],
                        nama: namaarr[index],
                        alamat: alamatarr[index],
                        tipe: tipearr[index]),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Meal Deals',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SeeAllScreen(
                                      judul: 'Meal Deals',
                                      arrgambar: gambararr2,
                                    )));
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: gambararr2.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: cardresto(
                        gambar: gambararr2[index],
                        nama: namaarr2[index],
                        alamat: alamatarr2[index],
                        tipe: tipearr2[index]),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
