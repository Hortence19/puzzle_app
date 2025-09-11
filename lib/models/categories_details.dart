import 'package:puzzle_app/models/categories.dart';

class CategoriesDetails {
  final String imageUrl;
  final String title;
  final List<Categories> categories;

  CategoriesDetails({
    required this.imageUrl,
    required this.title,
    required this.categories,
  });
}

List<CategoriesDetails> flagList = [
  CategoriesDetails(
    imageUrl: "assets/images/benin.png",
    title: "Benin",
    categories: [categories[0]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/togo.png",
    title: "Togo",
    categories: [categories[0]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/burkina.jpeg",
    title: "Burkina-Faso",
    categories: [categories[0]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/niger.jpeg",
    title: "Niger",
    categories: [categories[0]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/nigeria.png",
    title: "Nigeria",
    categories: [categories[0]],
  ),
];

List<CategoriesDetails> placeList = [
  CategoriesDetails(
    imageUrl: "assets/images/amazone.jpg",
    title: "Amazone",
    categories: [categories[1]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/independance.jpg",
    title: "Place de l'independance",
    categories: [categories[1]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/3Janvier.jpg",
    title: "3janvier",
    categories: [categories[1]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/temple.jpg",
    title: "Place du temple",
    categories: [categories[1]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/market.jpeg",
    title: "Marcher publique",
    categories: [categories[1]],
  ),
];

List<CategoriesDetails> foodList = [
  CategoriesDetails(
    imageUrl: "assets/images/telibo.jpg",
    title: "telibo",
    categories: [categories[2]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/koliko.jpg",
    title: "Koliko",
    categories: [categories[2]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/gnonkron.jpg",
    title: "Gnonkron",
    categories: [categories[2]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/Dambu.jpg",
    title: "Dambu",
    categories: [categories[2]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/fufu.jpg",
    title: "Fufu",
    categories: [categories[2]],
  ),
];

List<CategoriesDetails> cultureList = [
  CategoriesDetails(
    imageUrl: "assets/images/vodun.jpeg",
    title: "Vodun",
    categories: [categories[3]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/cultureTogo.jpg",
    title: "Journee culture",
    categories: [categories[3]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/festivalCulture.jpg",
    title: "Festival Culture",
    categories: [categories[3]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/choeur.jpg",
    title: "CHoeur Culturel",
    categories: [categories[3]],
  ),
  CategoriesDetails(
    imageUrl: "assets/images/journeyNG.png",
    title: "Journee culturel",
    categories: [categories[3]],
  ),
];
