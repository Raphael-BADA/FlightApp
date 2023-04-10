import 'package:flutter/material.dart';

Widget MyCard(String image, String town) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
      width: 220,
      height: 270,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 208, 208, 223),
          // color: Color.fromARGB(240, 245, 245, 250),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 25,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Stack(
              children: [
                Image(
                  height: 180,
                  width: 220,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/img/img$image.jpeg',
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 203, 144, 214),
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$town Skyline',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text('$town'),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
