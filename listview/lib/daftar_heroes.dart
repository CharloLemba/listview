import 'package:flutter/material.dart';
import 'pages/superman.dart' as superman;

class Heroes extends StatelessWidget {
  Heroes({super.key, required this.img, required this.teks});
  String img;
  String teks;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Image(image: NetworkImage(img), width: 140),
              SizedBox(width: 20),
              Text(
                teks,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
