import 'package:flutter/material.dart';

class Heroes extends StatelessWidget {
  const Heroes({
    super.key,
    required this.img,
    required this.teks,
    required this.routeTo, // Parameter baru untuk tujuan route
  });

  final String img;
  final String teks;
  final String routeTo;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          // Navigasi berdasarkan routeTo yang dikirimkan
          Navigator.pushNamed(context, routeTo);
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Image(image: NetworkImage(img), width: 140),
              const SizedBox(width: 20),
              Text(
                teks,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
