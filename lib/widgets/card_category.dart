import 'package:flutter/material.dart';

Widget CardCategory(String text, Color color, Icon icon) {
  return Column(
    children: [
      Card(
        elevation: 15,
        color: color,
        child: Padding(padding: EdgeInsets.all(15), child: icon),
      ),
      SizedBox(height: 6),
      Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
  );
}
