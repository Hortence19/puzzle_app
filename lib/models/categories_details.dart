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
    title: "Place de l’Indépendance",
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
  CategoriesDetails(
    imageUrl: "assets/images/obelisque.jpg",
    title: "Obélisque des Indépendances",
    categories: [categories[1]],
    description:
        "L’Obélisque des Indépendances, situé à Dakar au Sénégal, est un monument commémoratif de la liberté et de l’unité nationale.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/hippodrome.jpg",
    title: "Place de l’Hippodrome",
    categories: [categories[1]],
    description:
        "La Place de l’Hippodrome, à Bamako au Mali, est un lieu central de rassemblement et de mémoire nationale.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/felixhouphouet.jpg",
    title: "Statue de Félix Houphouët-Boigny",
    categories: [categories[1]],
    description:
        "La statue de Félix Houphouët-Boigny, père de l’indépendance ivoirienne, se trouve à Yamoussoukro, en Côte d’Ivoire.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/sankarasankara.jpg",
    title: "Statue de Thomas Sankara",
    categories: [categories[1]],
    description:
        "La statue de Thomas Sankara, figure révolutionnaire du Burkina Faso, est érigée à Ouagadougou.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/nelsonmandela.jpg",
    title: "Statue de Nelson Mandela",
    categories: [categories[1]],
    description:
        "La statue de Nelson Mandela, symbole de lutte contre l’apartheid, se trouve à Pretoria, en Afrique du Sud.",
  ),

  // --- Ajouts complémentaires ---
  CategoriesDetails(
    imageUrl: "assets/images/namugongo.jpeg",
    title: "Sanctuaire des Martyrs de Namugongo",
    categories: [categories[1]],
    description:
        "Situé près de Kampala, en Ouganda, ce sanctuaire commémore les martyrs chrétiens exécutés au XIXe siècle.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/addis_abeba.jpg",
    title: "Place Meskel",
    categories: [categories[1]],
    description:
        "La Place Meskel, à Addis-Abeba en Éthiopie, est un lieu central pour les rassemblements et les célébrations nationales.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/khartoum.jpg",
    title: "Place Al-Mogran",
    categories: [categories[1]],
    description:
        "Située à Khartoum, au Soudan, cette place est un point de rencontre symbolique au confluent du Nil Bleu et du Nil Blanc.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/casablanca.jpg",
    title: "Place Mohammed V",
    categories: [categories[1]],
    description:
        "La Place Mohammed V, au cœur de Casablanca au Maroc, est un centre administratif et culturel majeur.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/tunis.jpg",
    title: "Place du 14 Janvier",
    categories: [categories[1]],
    description:
        "Située à Tunis, en Tunisie, la Place du 14 Janvier commémore la révolution tunisienne de 2011.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/alger.jpg",
    title: "Place des Martyrs",
    categories: [categories[1]],
    description:
        "La Place des Martyrs, à Alger en Algérie, est un lieu historique et symbolique de la mémoire nationale.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/egypte.jpg",
    title: "Place Tahrir",
    categories: [categories[1]],
    description:
        "La Place Tahrir, au Caire en Égypte, est un symbole de liberté et de mobilisation populaire.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/luanda.jpg",
    title: "Place de l’Indépendance de Luanda",
    categories: [categories[1]],
    description:
        "Située à Luanda, en Angola, cette place rend hommage à l’indépendance du pays en 1975.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/maputo.jpg",
    title: "Place de l’Indépendance de Maputo",
    categories: [categories[1]],
    description:
        "La Place de l’Indépendance, au centre de Maputo au Mozambique, est dominée par la statue de Samora Machel.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/antananarivo.jpg",
    title: "Place de l’Indépendance d’Antananarivo",
    categories: [categories[1]],
    description:
        "La Place de l’Indépendance, située à Antananarivo à Madagascar, est un lieu emblématique de rassemblement populaire.",
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
        "Met ivoirien à base de semoule de manioc fermenté, accompagné de poisson frit et de crudités.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/jollof.jpg",
    title: "Jollof Rice",
    categories: [categories[2]],
    description:
        "Plat populaire d’Afrique de l’Ouest, à base de riz cuisiné dans une sauce tomate épicée, servi avec viande ou poisson.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/thieboudienne.jpg",
    title: "Thiéboudiène",
    categories: [categories[2]],
    description:
        "Plat national du Sénégal, composé de riz, de poisson et de légumes mijotés dans une sauce tomate parfumée.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/foutou.jpg",
    title: "Foutou",
    categories: [categories[2]],
    description:
        "Spécialité ivoirienne à base de banane plantain ou d’igname pilée, servie avec une sauce riche.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/tô.jpg",
    title: "Tô",
    categories: [categories[2]],
    description:
        "Plat burkinabè et malien à base de pâte de mil ou de maïs, accompagné de sauces variées.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/egusi.jpg",
    title: "Soupe Egusi",
    categories: [categories[2]],
    description:
        "Soupe nigériane préparée avec des graines de melon moulues, des légumes et de la viande.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/ndole.jpg",
    title: "Ndolé",
    categories: [categories[2]],
    description:
        "Plat camerounais à base de feuilles amères, d’arachides et de viande ou crevettes.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/ugali.jpg",
    title: "Ugali",
    categories: [categories[2]],
    description:
        "Plat de base en Afrique de l’Est, fait de farine de maïs cuite, servi avec légumes, viande ou poisson.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/injera.jpg",
    title: "Injera",
    categories: [categories[2]],
    description:
        "Galette éthiopienne à base de teff, utilisée comme pain et assiette pour divers ragoûts.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/bobotie.jpg",
    title: "Bobotie",
    categories: [categories[2]],
    description:
        "Plat sud-africain composé de viande hachée épicée, recouverte d’un mélange d’œufs et de lait, puis gratinée.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/bunnychow.jpg",
    title: "Bunny Chow",
    categories: [categories[2]],
    description:
        "Street food sud-africaine : pain évidé garni de curry épicé, d’origine indienne.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/matoke.jpg",
    title: "Matoke",
    categories: [categories[2]],
    description:
        "Plat ougandais à base de bananes plantains cuites à la vapeur et servies avec une sauce.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/kapenta.jpg",
    title: "Kapenta",
    categories: [categories[2]],
    description:
        "Poissons séchés ou frits, très populaires en Zambie et au Zimbabwe, servis avec du sadza ou nshima.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/mafe.jpg",
    title: "Mafé",
    categories: [categories[2]],
    description:
        "Ragoût ouest-africain à base de pâte d’arachide, de viande et de légumes.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/yassa.jpg",
    title: "Poulet Yassa",
    categories: [categories[2]],
    description:
        "Spécialité sénégalaise de poulet mariné au citron et aux oignons, servi avec du riz.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/romazava.jpg",
    title: "Romazava",
    categories: [categories[2]],
    description:
        "Plat national de Madagascar, composé de viande, de brèdes et de bouillon parfumé.",
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
  CategoriesDetails(
    imageUrl: "assets/images/fespaco.jpg",
    title: "FESPACO",
    categories: [categories[3]],
    description:
        "Festival panafricain du cinéma et de la télévision de Ouagadougou, au Burkina Faso, vitrine du 7e art africain.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/festivalmask.jpg",
    title: "Festival des Masques",
    categories: [categories[3]],
    description:
        "Célébration traditionnelle en Côte d’Ivoire mettant en avant les masques sacrés et les danses rituelles.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/kora.jpg",
    title: "Musique de la Kora",
    categories: [categories[3]],
    description:
        "Instrument emblématique d’Afrique de l’Ouest, la kora accompagne griots et conteurs dans leurs récits.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/dansezulu.jpg",
    title: "Danse Zoulou",
    categories: [categories[3]],
    description:
        "Danse traditionnelle d’Afrique du Sud, marquée par des mouvements énergiques et des chants guerriers.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/coffeeethiopia.jpg",
    title: "Cérémonie du café",
    categories: [categories[3]],
    description:
        "Rituel social et culturel éthiopien, symbole d’hospitalité et de convivialité.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/gnawa.jpg",
    title: "Musique Gnawa",
    categories: [categories[3]],
    description:
        "Tradition spirituelle et musicale du Maroc, mêlant chants, danses et instruments comme le guembri.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/timbuktu.jpg",
    title: "Manuscrits de Tombouctou",
    categories: [categories[3]],
    description:
        "Trésors historiques du Mali, témoins de l’âge d’or intellectuel et spirituel de l’Afrique médiévale.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/sabar.jpg",
    title: "Danse Sabar",
    categories: [categories[3]],
    description:
        "Danse traditionnelle sénégalaise accompagnée de percussions, symbole de fête et de communion.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/voodoo.jpg",
    title: "Festival du Vodoun",
    categories: [categories[3]],
    description:
        "Célébration annuelle au Bénin, mettant en avant les rites et pratiques du culte vodoun.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/eritrea.jpg",
    title: "Danse Tigrigna",
    categories: [categories[3]],
    description:
        "Danse traditionnelle d’Érythrée, exécutée en cercle avec des pas rythmés et des chants.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/masai.jpg",
    title: "Rites Massaï",
    categories: [categories[3]],
    description:
        "Cérémonies initiatiques et danses des Massaï au Kenya et en Tanzanie, symboles d’identité et de bravoure.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/mbira.jpg",
    title: "Musique Mbira",
    categories: [categories[3]],
    description:
        "Instrument traditionnel du Zimbabwe, aussi appelé piano à pouces, utilisé dans les rituels et fêtes.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/baobab.jpg",
    title: "Contes sous le Baobab",
    categories: [categories[3]],
    description:
        "Tradition orale africaine où les anciens transmettent savoirs et légendes à l’ombre du baobab.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/ndebele.jpg",
    title: "Art Ndebele",
    categories: [categories[3]],
    description:
        "Peintures murales colorées et motifs géométriques des maisons Ndebele en Afrique du Sud et au Zimbabwe.",
  ),
  CategoriesDetails(
    imageUrl: "assets/images/masquesdogon.jpg",
    title: "Masques Dogon",
    categories: [categories[3]],
    description:
        "Masques rituels du peuple Dogon au Mali, utilisés lors des cérémonies funéraires et initiatiques.",
  ),
];
