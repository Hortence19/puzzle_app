import 'package:flutter/material.dart';
import 'package:puzzle_app/pages/categorie_detail_puzzle.dart';
import 'package:puzzle_app/models/categories.dart';

class CategoriePuzzle extends StatelessWidget {
  const CategoriePuzzle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF2FF),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/Logo.png', height: 97, width: 97),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    "AfricaWorld",
                    style: TextStyle(
                      fontFamily: "Alumni_Sans_SC",
                      color: Colors.black,
                      /* 
                      fontWeight: FontWeight.bold, */
                      fontSize: 45,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            // Liste dynamique
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
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

            Center(
              child: Text(
                "Réal. Ecole229, Coh4",
                style: TextStyle(fontSize: 12, color: Colors.black54),
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
