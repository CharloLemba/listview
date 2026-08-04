import 'package:flutter/material.dart';
import 'daftar_heroes.dart';

void main() {
  runApp(MaterialApp(home: Home(), debugShowCheckedModeBanner: false));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: Icon(Icons.list, color: Colors.white),
        title: Text("Listview", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                "List Super Heroes",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              SizedBox(height: 50),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      child: Center(
                        child: Column(
                          children: [
                            Heroes(
                              img:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp70OlfUDNACOC3yfU1b0IIQfLoVvapUjfYLM_kQmTijKypk7qdS6UWJQ&s=10",
                              teks: "Superman",
                            ),
                            SizedBox(height: 20),
                            Heroes(
                              img:
                                  "https://cdn1.epicgames.com/undefined/offer/batman-arkham-knight_promo-2048x1152-ed2be22b3f24f446534b90b122ed560d.jpg",
                              teks: "Batman",
                            ),
                            SizedBox(height: 20),
                            Heroes(
                              img:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPClvrAj94wopRwJKjemLpEgazzsIVo-Qs7aTz_MzFm8NNIBhdXIxRhmNJ&s=10",
                              teks: "Wonder Woman",
                            ),
                            SizedBox(height: 20),
                            Heroes(
                              img:
                                  "https://media.matamata.com/thumbs/2018/06/24/25489-spidermanps4instagram-atmarvel/745x489-img-25489-spidermanps4instagram-atmarvel.jpg",
                              teks: "Spider-Man",
                            ),
                            SizedBox(height: 20),
                            Heroes(
                              img:
                                  "https://cdn.marvel.com/content/2x/marvelswolverine_lob_mas_mob_02-1.webp",
                              teks: "Wolverine",
                            ),
                            SizedBox(height: 20),
                            Heroes(
                              img:
                                  "https://assets.promediateknologi.id/crop/0x0:0x0/1200x0/webp/photo/p3/75/2024/04/18/the-hulk-2000-718378f1f36d4404a42d1eea9d65f350-2758614810.jpg",
                              teks: "Hulk",
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
