import 'package:puzzle_app/models/categories.dart';

class CategoriesDetails {
  final String imageUrl;
  final String title;
  final List<Categories> categories;
  final String description;

  CategoriesDetails({
    required this.imageUrl,
    required this.title,
    required this.categories,
    required this.description
  });
}

List<CategoriesDetails> flagList = [
  CategoriesDetails(
    imageUrl: "assets/images/benin.png",
    title: "Bénin",
    categories: [categories[0]],
    description:
        "Situé en Afrique de l’Ouest, entre le Togo, le Nigeria, le Niger et le Burkina Faso. Sa devise est « Fraternité, Justice, Travail ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/togo.png",
    title: "Togo",
    categories: [categories[0]],
    description:
        "Petit pays d’Afrique de l’Ouest bordé par le Ghana, le Bénin et le Burkina Faso. Sa devise est « Travail, Liberté, Patrie ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/burkina.jpeg",
    title: "Burkina Faso",
    categories: [categories[0]],
    description:
        "Pays sahélien enclavé d’Afrique de l’Ouest, voisin du Mali, du Niger, du Bénin, du Togo, du Ghana et de la Côte d’Ivoire. Sa devise est « Unité, Progrès, Justice ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/niger.jpeg",
    title: "Niger",
    categories: [categories[0]],
    description:
        "Grand pays sahélien enclavé d’Afrique de l’Ouest, voisin du Nigeria, du Bénin, du Burkina Faso, du Mali, de l’Algérie, de la Libye et du Tchad. Sa devise est « Fraternité, Travail, Progrès ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/nigeria.png",
    title: "Nigeria",
    categories: [categories[0]],
    description:
        "Pays d’Afrique de l’Ouest bordé par le Bénin, le Niger, le Tchad et le Cameroun, avec un accès sur le golfe de Guinée. Sa devise est « Unité et Foi, Paix et Progrès ».",
  ),
];


List<CategoriesDetails> placeList = [
  CategoriesDetails(
    imageUrl: "assets/images/amazone.jpg",
    title: "Amazone",
    categories: [categories[1]],
    description:
        "Le Monument de l’Amazone, symbole de bravoure et de liberté, est situé à Cotonou, au Bénin.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/independance.jpg",
    title: "Place de l'indépendance",
    categories: [categories[1]],
    description:
        "La Place de l’Indépendance, érigée à Lomé au Togo, commémore l’indépendance du pays.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/3Janvier.jpg",
    title: "Place du 3 Janvier",
    categories: [categories[1]],
    description:
        "La Place du 3 Janvier, aussi appelée Place des Cinéastes, est un lieu emblématique de Ouagadougou, au Burkina Faso.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/temple.jpg",
    title: "Place du Temple",
    categories: [categories[1]],
    description:
        "La Place du Temple est un site historique et culturel situé au cœur de Niamey, au Niger.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/drkwameghana.jpg",
    title: "Statue de Kwame Nkrumah",
    categories: [categories[1]],
    description:
        "La statue de Kwame Nkrumah se trouve dans le parc mémorial qui porte son nom, à Accra, au Ghana.",
  ),
];


List<CategoriesDetails> foodList = [
  CategoriesDetails(
    imageUrl: "assets/images/telibo.jpg",
    title: "Tèlìbo",
    categories: [categories[2]],
    description:
        "Plat béninois à base de pâte noire accompagné de sauce et de crin-crin.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/koliko.jpg",
    title: "Koliko",
    categories: [categories[2]],
    description:
        "Spécialité togolaise constituée de morceaux d’igname frits, souvent dégustés comme en-cas.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/gnonkron.jpg",
    title: "Gnonkron",
    categories: [categories[2]],
    description:
        "Plat traditionnel du Burkina Faso préparé avec des feuilles locales et des ingrédients variés.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/Dambu.jpg",
    title: "Dambou",
    categories: [categories[2]],
    description:
        "Recette nigérienne à base de semoule de mil mélangée à des légumes et des épices.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/atiék.jpg",
    title: "Attiéké",
    categories: [categories[2]],
    description:
        "Met ivoirien proche de l’attiéké, accompagné de poisson frit et d’une salade de crudités.",
  ),
];


List<CategoriesDetails> cultureList = [
  CategoriesDetails(
    imageUrl: "assets/images/vodun.jpeg",
    title: "Vodun",
    categories: [categories[3]],
    description:
        "Célébration du Vodun, une fête traditionnelle et spirituelle originaire du Bénin.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/cultureTogo.jpg",
    title: "Journée culturelle",
    categories: [categories[3]],
    description:
        "Manifestation culturelle au Togo mettant en valeur les traditions et les arts du pays.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/festivalCulture.jpg",
    title: "Festival culturel",
    categories: [categories[3]],
    description:
        "Événement du peuple Mossi au Burkina Faso, riche en danses, musiques et coutumes.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/choeur.jpg",
    title: "Chœur culturel",
    categories: [categories[3]],
    description:
        "Expression artistique des hommes de la tribu nomade Wodaabe, connue pour ses chants et danses.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/durbar festival.jpeg",
    title: "Festival Durbar",
    categories: [categories[3]],
    description:
        "Grande parade équestre et traditionnelle du Nigeria, marquée par faste et couleurs.",
  ),
];

