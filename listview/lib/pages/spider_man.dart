import 'package:flutter/material.dart';

class SpiderMan extends StatelessWidget {
  const SpiderMan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spider-Man"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.brown,
        // Tombol back akan otomatis muncul di sini karena ada history Navigator.push
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Image(
                      image: NetworkImage(
                        "https://media.matamata.com/thumbs/2018/06/24/25489-spidermanps4instagram-atmarvel/745x489-img-25489-spidermanps4instagram-atmarvel.jpg",
                      ),
                      width: 300,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "SPIDER-MAN",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "When Peter Parker, a married father of two, learns that his destiny to become a hero was prevented, he chooses to retake his life and become Spider-Man!\n\nIn another world where a radioactive spider never bites Peter Parker, the married father of two gets another shot and starts fighting crime as Spider-Man.\n\nThe radioactive spider bite endows Peter with the proportionate strength, speed, durability, and agility of a spider. As such, he can also stick to and crawl on walls. Peter also possesses a “spider-sense” alert, which allows him to detect danger right before it happens.",
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
