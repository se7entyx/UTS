// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SeeAllScreen extends StatelessWidget {
  var arrgambar = [];

  String judul;

  SeeAllScreen({
    Key? key,
    required this.judul,
    required this.arrgambar,
  }) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
        judul,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_rounded),
        color: Color.fromRGBO(243, 210, 91, 1.0),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
    ),
    body: Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: arrgambar.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 300,
                color: Colors.black,
                child: Image.asset(
                  arrgambar[index],
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
}

}
