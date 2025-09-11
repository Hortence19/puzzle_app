import 'package:flutter/material.dart';
import 'package:puzzle_app/pages/categorie_detail_puzzle.dart';
import 'package:puzzle_app/models/categories.dart';

class CategoriePuzzle extends StatelessWidget {
  const CategoriePuzzle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF2FF),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset('assets/images/Logo.png', height: 80, width: 80),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    "AfricaWorld",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 37,
                    ),
                  ),
                ),
              ],
            ),

            // Liste dynamique
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final categorie = categories[index];
                  return _buildCategoryButton(
                    icon: categorie.icon,
                    label: categorie.title,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CategorieDetailPage(categorie: categorie),
                        ),
                      );
                    },
                  );
                },
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(bottom: 2.0, top: 16),
              child: Center(
                child: Text(
                  "Réal. Ecole229, Coh4",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF0D47A1), Color(0xFF1976D2)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.white, size: 50),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
