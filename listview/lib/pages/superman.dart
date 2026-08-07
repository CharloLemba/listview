import 'package:flutter/material.dart';

class Superman extends StatelessWidget {
  const Superman({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          children: [
            Image(
              image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp70OlfUDNACOC3yfU1b0IIQfLoVvapUjfYLM_kQmTijKypk7qdS6UWJQ&s=10",
              ),
              width: 300,
            ),
            Text(
              "SUPERMAN",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text(
              """Faster than a speeding bullet, more powerful than a locomotive… The Man of Steel fights a never-ending battle for truth, justice and a better tomorrow.
              From his blue uniform to his flowing red cape to the 'S' shield on his chest, Superman is one of the most immediately recognizable and beloved DC Super Heroes of all time. The Man of Steel is the ultimate symbol of truth, justice and hope. He is the world's first Super Hero and a guiding light to all.""",
            ),
          ],
        ),
      ),
    );
  }
}
