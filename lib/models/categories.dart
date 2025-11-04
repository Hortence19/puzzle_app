import 'package:flutter/material.dart';

class Categories {
  final IconData icon;
  final String title;

  Categories({required this.icon, required this.title});
}

List<Categories> categories = [
  Categories(icon: Icons.flag_outlined, title: "Drapeaux des pays"),
  Categories(icon: Icons.image, title: "Places Publiques"),
  Categories(icon: Icons.dining_outlined, title: "Repas du pays"),
  Categories(icon: Icons.image, title: "Cultures & Traditions"),
];
