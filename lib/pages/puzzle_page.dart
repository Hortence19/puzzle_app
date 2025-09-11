import 'package:flutter/material.dart';
import 'package:puzzle_app/models/categories_details.dart';

class PuzzlePage extends StatelessWidget {
  final CategoriesDetails item;

  const PuzzlePage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(item.imageUrl, width: 250, height: 250),
            const SizedBox(height: 20),
            Text(
              "Puzzle de ${item.title}",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text("logique du puzzle 🔥"),
          ],
        ),
      ),
    );
  }
}
