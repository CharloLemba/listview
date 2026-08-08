import 'package:flutter/material.dart';

class Wolverine extends StatelessWidget {
  const Wolverine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wolverine"),
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
                        "https://cdn.marvel.com/content/2x/marvelswolverine_lob_mas_mob_02-1.webp",
                      ),
                      width: 300,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "WOLVERINE",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "A mutant with an unstoppable healing power, adamantium metal claws and no-nonsense attitude makes the man called Logan, one of the most ferocious heroes in the universe.\n\nFrom the northern wilderness of Canada hails one of the gruffest, most irascible, totally cynical and brooding member of the X-Men ever to grace the team with his presence.",
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
