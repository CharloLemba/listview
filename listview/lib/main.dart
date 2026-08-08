import 'package:flutter/material.dart';
import 'daftar_heroes.dart';
// Import halaman detail masing-masing hero
import 'pages/superman.dart' as superman;
import 'pages/batman.dart' as batman;
import 'pages/wonder_woman.dart' as wonder_woman;
import 'pages/spider_man.dart' as spiderman;
import 'pages/wolverine.dart' as wolverine;
import 'pages/hulk.dart' as hulk;

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // Tentukan rute awal aplikasi
      initialRoute: '/',
      // Daftarkan nama rute beserta Widget halamannya
      routes: {
        '/': (context) => const Home(),
        '/superman': (context) => const superman.Superman(),
        '/batman': (context) => const batman.Batman(),
        '/wonder_woman': (context) => const wonder_woman.WonderWoman(),
        '/spider_man': (context) => const spiderman.SpiderMan(),
        '/wolverine': (context) => const wolverine.Wolverine(),
        '/hulk': (context) => const hulk.Hulk(),
      },
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: const Icon(Icons.list, color: Colors.white),
        title: const Text("Listview", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                "List of Super Heroes",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(height: 50),
              Expanded(
                child: ListView(
                  children: const [
                    Center(
                      child: Column(
                        children: [
                          // Tambahkan properti routeTo ke setiap widget Heroes
                          Heroes(
                            img:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp70OlfUDNACOC3yfU1b0IIQfLoVvapUjfYLM_kQmTijKypk7qdS6UWJQ&s=10",
                            teks: "Superman",
                            routeTo: '/superman',
                          ),
                          SizedBox(height: 20),
                          Heroes(
                            img:
                                "https://cdn1.epicgames.com/undefined/offer/batman-arkham-knight_promo-2048x1152-ed2be22b3f24f446534b90b122ed560d.jpg",
                            teks: "Batman",
                            routeTo: '/batman',
                          ),
                          SizedBox(height: 20),
                          Heroes(
                            img:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPClvrAj94wopRwJKjemLpEgazzsIVo-Qs7aTz_MzFm8NNIBhdXIxRhmNJ&s=10",
                            teks: "Wonder Woman",
                            routeTo: '/wonder_woman',
                          ),
                          SizedBox(height: 20),
                          Heroes(
                            img:
                                "https://media.matamata.com/thumbs/2018/06/24/25489-spidermanps4instagram-atmarvel/745x489-img-25489-spidermanps4instagram-atmarvel.jpg",
                            teks: "Spider-Man",
                            routeTo: '/spider_man',
                          ),
                          SizedBox(height: 20),
                          Heroes(
                            img:
                                "https://cdn.marvel.com/content/2x/marvelswolverine_lob_mas_mob_02-1.webp",
                            teks: "Wolverine",
                            routeTo: '/wolverine',
                          ),
                          SizedBox(height: 20),
                          Heroes(
                            img:
                                "https://assets.promediateknologi.id/crop/0x0:0x0/1200x0/webp/photo/p3/75/2024/04/18/the-hulk-2000-718378f1f36d4404a42d1eea9d65f350-2758614810.jpg",
                            teks: "Hulk",
                            routeTo: '/hulk',
                          ),
                          SizedBox(height: 20),
                        ],
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
