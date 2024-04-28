import 'package:flutter/material.dart';

class cardresto extends StatelessWidget {
  String gambar;
  String nama;
  String alamat;
  String tipe;
  cardresto(
      {super.key,
      required this.gambar,
      required this.nama,
      required this.alamat,
      required this.tipe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Container(
              width: 180,
              color: Colors.black,
              height: 100,
              child: Image.asset(
                gambar,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(alamat, style: TextStyle(fontSize: 16)),
                Text(
                  tipe,
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
