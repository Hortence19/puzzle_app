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
    required this.description,
  });
}

List<CategoriesDetails> flagList = [
  CategoriesDetails(
    imageUrl: "assets/images/benin.png",
    title: "Bénin",
    categories: [categories[0]],
    description:
        "Pays situé en Afrique de l’Ouest, entre le Togo, le Nigeria, le Niger et le Burkina Faso. Sa devise est « Fraternité, Justice, Travail ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/togo.png",
    title: "Togo",
    categories: [categories[0]],
    description:
        "Petit pays d’Afrique de l’Ouest, bordé par le Ghana, le Bénin et le Burkina Faso. Sa devise est « Travail, Liberté, Patrie ».",
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
        "Pays d’Afrique de l’Ouest, bordé par le Bénin, le Niger, le Tchad et le Cameroun, avec un accès sur le golfe de Guinée. Sa devise est « Unité et Foi, Paix et Progrès ».",
  ),

  // --- 20 pays supplémentaires ---
  CategoriesDetails(
    imageUrl: "assets/images/mali.png",
    title: "Mali",
    categories: [categories[0]],
    description:
        "Pays sahélien enclavé d’Afrique de l’Ouest, voisin de l’Algérie, du Niger, du Burkina Faso, de la Côte d’Ivoire, de la Guinée, du Sénégal et de la Mauritanie. Sa devise est « Un Peuple, Un But, Une Foi ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/senegal.png",
    title: "Sénégal",
    categories: [categories[0]],
    description:
        "Pays côtier d’Afrique de l’Ouest, bordé par l’océan Atlantique, la Mauritanie, le Mali, la Guinée et la Guinée-Bissau. Sa devise est « Un Peuple, Un But, Une Foi ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/cotedivoire.png",
    title: "Côte d’Ivoire",
    categories: [categories[0]],
    description:
        "Pays côtier d’Afrique de l’Ouest, voisin du Liberia, de la Guinée, du Mali, du Burkina Faso et du Ghana. Sa devise est « Union, Discipline, Travail ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/ghana.png",
    title: "Ghana",
    categories: [categories[0]],
    description:
        "Pays côtier d’Afrique de l’Ouest, bordé par la Côte d’Ivoire, le Burkina Faso et le Togo. Sa devise est « Liberté et Justice ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/guinee.png",
    title: "Guinée",
    categories: [categories[0]],
    description:
        "Pays d’Afrique de l’Ouest, bordé par la Guinée-Bissau, le Sénégal, le Mali, la Côte d’Ivoire, le Liberia et la Sierra Leone. Sa devise est « Travail, Justice, Solidarité ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/guineebissau.png",
    title: "Guinée-Bissau",
    categories: [categories[0]],
    description:
        "Petit pays d’Afrique de l’Ouest, bordé par le Sénégal, la Guinée et l’océan Atlantique. Sa devise est « Unité, Lutte, Progrès ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/sierra_leone.png",
    title: "Sierra Leone",
    categories: [categories[0]],
    description:
        "Pays côtier d’Afrique de l’Ouest, voisin du Liberia et de la Guinée. Sa devise est « Unité, Liberté, Justice ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/liberia.png",
    title: "Liberia",
    categories: [categories[0]],
    description:
        "Pays côtier d’Afrique de l’Ouest, voisin de la Sierra Leone, de la Guinée et de la Côte d’Ivoire. Sa devise est « L’Amour de la Liberté nous a fait venir ici ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/mauritanie.png",
    title: "Mauritanie",
    categories: [categories[0]],
    description:
        "Pays sahélien et désertique d’Afrique du Nord-Ouest, bordé par le Sahara occidental, l’Algérie, le Mali, le Sénégal et l’océan Atlantique. Sa devise est « Honneur, Fraternité, Justice ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/egypte.png",
    title: "Égypte",
    categories: [categories[0]],
    description:
        "Pays d’Afrique du Nord, traversé par le Nil et bordé par la Méditerranée et la mer Rouge. Sa devise est « Allah, Patrie, Révolution ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/maroc.png",
    title: "Maroc",
    categories: [categories[0]],
    description:
        "Pays d’Afrique du Nord, bordé par l’océan Atlantique, la Méditerranée, l’Algérie et le Sahara occidental. Sa devise est « Dieu, Patrie, Roi ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/algerie.png",
    title: "Algérie",
    categories: [categories[0]],
    description:
        "Grand pays d’Afrique du Nord, bordé par la Tunisie, la Libye, le Niger, le Mali, la Mauritanie, le Maroc et la Méditerranée. Sa devise est « Par le Peuple et pour le Peuple ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/tunisie.png",
    title: "Tunisie",
    categories: [categories[0]],
    description:
        "Pays d’Afrique du Nord, bordé par l’Algérie, la Libye et la Méditerranée. Sa devise est « Liberté, Dignité, Justice, Ordre ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/cameroun.png",
    title: "Cameroun",
    categories: [categories[0]],
    description:
        "Pays d’Afrique centrale, bordé par le Nigeria, le Tchad, la République centrafricaine, le Congo, le Gabon, la Guinée équatoriale et l’océan Atlantique. Sa devise est « Paix, Travail, Patrie ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/tchad.png",
    title: "Tchad",
    categories: [categories[0]],
    description:
        "Pays sahélien enclavé d’Afrique centrale, voisin de la Libye, du Soudan, de la Centrafrique, du Cameroun, du Nigeria et du Niger. Sa devise est « Unité, Travail, Progrès ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/ethiopie.png",
    title: "Éthiopie",
    categories: [categories[0]],
    description:
        "Pays de la Corne de l’Afrique, voisin de l’Érythrée, du Djibouti, de la Somalie, du Kenya, du Soudan et du Soudan du Sud. Sa devise est « Unité dans la diversité ».",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/kenya.png",
    title: "Kenya",
    categories: [categories[0]],
    description:
        "Pays d’Afrique de l’Est, bordé par la Somalie, l’Éthiopie, le Soudan du Sud, l’Ouganda, la Tanzanie et l’océan Indien. Sa devise est « Harambee » (Ensemble).",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/tanzanie.png",
    title: "Tanzanie",
    categories: [categories[0]],
    description:
        "Pays d’Afrique de l’Est, voisin du Kenya, de l’Ouganda, du Rwanda, du Burundi, de la République démocratique du Congo et du Mozambique, avec un accès à l’océan Indien. Sa devise est « Liberté, Unité, Fraternité",
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
    imageUrl: "assets/images/benincult.webp",
    title: "Trône",
    categories: [categories[3]],
    description: "Trône du roi Ghézo, emblème du pouvoir royal dahoméen.",
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
