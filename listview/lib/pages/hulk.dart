import 'package:flutter/material.dart';

class Hulk extends StatelessWidget {
  const Hulk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hulk"),
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
                        "https://assets.promediateknologi.id/crop/0x0:0x0/1200x0/webp/photo/p3/75/2024/04/18/the-hulk-2000-718378f1f36d4404a42d1eea9d65f350-2758614810.jpg",
                      ),
                      width: 300,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "HULK",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Dr. Bruce Banner lives a life caught between the soft-spoken scientist he’s always been and the uncontrollable green monster powered by his rage.\n\nExposed to heavy doses of gamma radiation, scientist Bruce Banner transforms into the mean, green rage machine called the Hulk.",
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
