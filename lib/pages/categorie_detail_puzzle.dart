import 'package:flutter/material.dart';
import 'package:puzzle_app/models/categories.dart';
import 'package:puzzle_app/models/categories_details.dart';
import 'package:puzzle_app/pages/puzzle_page.dart';

class CategorieDetailPage extends StatelessWidget {
  final Categories categorie;

  const CategorieDetailPage({super.key, required this.categorie});

  @override
  Widget build(BuildContext context) {
    List<CategoriesDetails> details = [];

    if (categorie.title == "Drapeaux des pays") {
      details = flagList;
    } else if (categorie.title == "Places Publiques") {
      details = placeList;
    } else if (categorie.title == "Repas du pays") {
      details = foodList;
    } else if (categorie.title == "Cultures & Traditions") {
      details = cultureList;
    }

    return Scaffold(
      appBar: AppBar(title: Text(categorie.title)),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: 80,
        itemBuilder: (context, index) {
          final item = details[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PuzzlePage(item: item)),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    item.imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  item.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          );
        },
      ),
    );
  }
}
