import 'package:flutter/material.dart';

class Heroes extends StatelessWidget {
  Heroes({super.key, required this.img, required this.teks});
  String img;
  String teks;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image: NetworkImage(img), width: 140),
        SizedBox(width: 20),
        Text(teks, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
