import 'package:flutter/material.dart';

enum Category {
  men,
  women,
  accessories,
}

enum ProductType {
  dress,
  shoe,
  fragrance,
}

class ColorsModel {
  final String? colorName;
  final Color? colorCode;
  const ColorsModel({this.colorName, this.colorCode});
}

class ProductModel {
  final String? name;
  final List<String>? images;
  final double? price;
  final List<ColorsModel>? colors;
  final List<String>? sizes;
  final String? description;
  final Category? category;
  final ProductType? productType;

  const ProductModel({
    this.name,
    this.images,
    this.price,
    this.colors,
    this.sizes,
    this.description,
    this.category,
    this.productType,
  });
}

List<ProductModel> demoProducts = [
  const ProductModel(
      name: 'LV VITESSE T-SHIRT DRESS',
      images: [
        "assets/images/product/1_1.png",
        "assets/images/product/1_2.webp",
      ],
      price: 140,
      colors: [
        ColorsModel(colorName: "NOIR BLANC", colorCode: Colors.black),
        ColorsModel(colorName: "ROGUE", colorCode: Colors.red),
      ],
      description:
          'Crafted from a lightweight wool-blend knit, this casual T-shirt dress fits the figure to highlight a feminine silhouette. The capsule’s sporty LV Vitesse motif features as a row of contrasting patches across the bust and short sleeves, introducing a contemporary graphic feel. An easy-to-wear style with a signature spin.',
      category: Category.women,
      productType: ProductType.dress),
  const ProductModel(
      name: 'MINI T-SHIRT DRESS',
      images: [
        "assets/images/product/2_1.webp",
      ],
      price: 80,
      colors: [
        ColorsModel(colorName: "WHITE", colorCode: Colors.white),
      ],
      description:
          'A cornerstone silhouette from the collection pared back for a fresh, everyday look. This sleeveless mini T-shirt dress is cut from subtly shiny jersey, while a chain detail at the crew neck adds an iconic House touch. Clean, comfortable and easy to style.',
      category: Category.women,
      productType: ProductType.dress),
  const ProductModel(
      name: 'TERRITORY FLAT HALF BOOT',
      images: [
        "assets/images/product/3_1.webp",
        "assets/images/product/3_2.webp",
      ],
      price: 200,
      colors: [
        ColorsModel(colorName: "ROSE", colorCode: Colors.pinkAccent),
        ColorsModel(colorName: "KAKI", colorCode: Color(0x0f5D655B)),
      ],
      description:
          "The Territory flat half boot is Louis Vuitton's elevated interpretation of a classic rain boot. It comes in rubber-effect calf leather with a tonal rubber outsole for a 'dipped-in-paint' look. This slip-on style is finished with a Vuitton tag and an engraved, silver-tone buckle and studs.",
      category: Category.women,
      productType: ProductType.shoe),
  const ProductModel(
      name: 'SILHOUETTE ANKLE BOOT',
      images: [
        "assets/images/product/4_1.webp",
        "assets/images/product/4_2.webp",
      ],
      price: 399,
      colors: [
        ColorsModel(colorName: "ECRU", colorCode: Color(0x0fC2B280)),
        ColorsModel(colorName: "NOIR", colorCode: Colors.black),
      ],
      description:
          "The Silhouette ankle boot is revisited this season in extremely supple calf leather. A lace in Monogram canvas is tied around the ankle, giving this style a very feminine look. The Monogram Flower-shaped heel, which is the signature of the Silhouette line, is also covered in Monogram canvas.",
      category: Category.women,
      productType: ProductType.shoe),
  const ProductModel(
      name: "HEURES D'ABSENCE",
      images: [
        "assets/images/product/5_1.webp",
        "assets/images/product/5_2.webp",
      ],
      price: 299,
      sizes: [
        "100ML",
        "200ML",
      ],
      description:
          "A beautiful escape through the flowery fields of Grasse Heures d'Absence is an invitation to let yourself go and enjoy those moments when time suspends its flight. An enchanting break we would love to last forever. A moment the Master Perfumer Jacques Cavallier Belletrud has captured in a profusion of fresh flowers. An absolutely contemporary bouquet giving pride of place to the delicate flowers of Grasse where jasmin and rose de Mai reveal themselves in all their majesty, enhanced by the green and powdery facets of mimosa from Tanneron. A hint of sandalwood and musk prolong the powdery accents of the flowers, while caressing them with a touch of sensuality. A vibrant and luminous fragrance, full of optimism. The bottle is refillable in stores equipped with a perfume fountain. Order your Louis Vuitton fragrance and receive a complimentary sample so you can discover the fragrance before wearing or gifting it. That way, should you wish to, you can return your unopened bottle for reimbursement.",
      category: Category.women,
      productType: ProductType.fragrance),
  const ProductModel(
      name: "TURBULENCES",
      images: [
        "assets/images/product/6_1.webp",
        "assets/images/product/6_2.webp",
      ],
      price: 299,
      sizes: [
        "100ML",
        "200ML",
      ],
      description:
          "A beautiful escape through the flowery fields of Grasse Heures d'Absence is an invitation to let yourself go and enjoy those moments when time suspends its flight. An enchanting break we would love to last forever. A moment the Master Perfumer Jacques Cavallier Belletrud has captured in a profusion of fresh flowers. An absolutely contemporary bouquet giving pride of place to the delicate flowers of Grasse where jasmin and rose de Mai reveal themselves in all their majesty, enhanced by the green and powdery facets of mimosa from Tanneron. A hint of sandalwood and musk prolong the powdery accents of the flowers, while caressing them with a touch of sensuality. A vibrant and luminous fragrance, full of optimism. The bottle is refillable in stores equipped with a perfume fountain. Order your Louis Vuitton fragrance and receive a complimentary sample so you can discover the fragrance before wearing or gifting it. That way, should you wish to, you can return your unopened bottle for reimbursement.",
      category: Category.women,
      productType: ProductType.fragrance),
  const ProductModel(
      name: "PADDED MONOGRAM TIE-AND-DYE PARKA",
      images: [
        "assets/images/product/7_1.webp",
        "assets/images/product/7_2.webp",
      ],
      price: 199,
      sizes: [
        "50",
        "60",
      ],
      description:
          "This functional parka is all about the season's Tie-and-Dye Galaxy Monogram motif. The pattern is played as an all-over jacquard weave on water-repellent technical wool, on a regular-fitting shape. Fully padded, it features a zipped opening with snap buttons, an adjustable waist and a plain lining.",
      category: Category.men,
      productType: ProductType.dress),
  const ProductModel(
      name: "TECHNICAL WOOL PEACOAT",
      images: [
        "assets/images/product/8_1.webp",
        "assets/images/product/8_2.webp",
      ],
      price: 399,
      sizes: [
        "50",
        "60",
      ],
      description:
          "High-tech Louis Vuitton signatures lend a futuristic feel to this new take on the classic peacoat. The signatures - Louis Vuitton on one sleeve, and LVM on the other - are injected into the wool-blend fabric using silicone. Cut in a regular fit, the piece features metallic buttons and a lining adorned with a handwritten Louis Vuitton motif.",
      category: Category.men,
      productType: ProductType.dress),
  const ProductModel(
      name: "RASPAIL MOCASSIN",
      images: [
        "assets/images/product/9_1.webp",
        "assets/images/product/9_2.webp",
      ],
      price: 399,
      colors: [
        ColorsModel(colorName: "WHITE", colorCode: Colors.white),
        ColorsModel(colorName: "NOIR", colorCode: Colors.black),
      ],
      sizes: [
        "8",
        "10",
      ],
      description:
          "The Raspail moccasin is crafted from supple, grained calf leather, which is partially embossed with the Monogram pattern. The hand-stitched vamp is embellished with a knot accessory inspired by the world of sailing. This model has an authentic tubular construction, with no insole, for exceptional comfort, and a flexible outsole with small rubber nubs.",
      category: Category.men,
      productType: ProductType.shoe),
  const ProductModel(
      name: "LVXNBA OBERKAMPF ANKLE BOOT",
      images: [
        "assets/images/product/10_1.webp",
        "assets/images/product/10_2.webp",
      ],
      price: 599,
      colors: [
        ColorsModel(colorName: "BEIGE", colorCode: Colors.white),
        ColorsModel(colorName: "NOIR", colorCode: Color(0x0f946B45)),
      ],
      sizes: [
        "8",
        "10",
      ],
      description:
          "The Oberkampf ankle boot is revisited as part of the exclusive LV x NBA collection of ready-to-wear, accessories and leather goods. Combining nubuck leather and Monogram canvas, it is accessorized with a rubber tag featuring the NBA logo. The same signature is embossed on the tongue, while the sturdy rubber outsole is decorated with Monogram Flowers.",
      category: Category.men,
      productType: ProductType.shoe),
  const ProductModel(
      name: "LES SABLES ROSES",
      images: [
        "assets/images/product/11_1.webp",
        "assets/images/product/11_2.webp",
      ],
      price: 299,
      sizes: [
        "100ML",
        "200ML",
      ],
      description:
          "A timeless fragrance trail of rose and oud wood to taste the infinite desert. The desert possesses a singular magic that captivates travelers. At dawn, the sun’s first rays blend the dunes and the sky, night and day, and the earth and clouds into a majestic pink. Fascinated by the harmony that springs from contrasts, the Master Perfumer Jacques Cavallier Belletrud has composed a hot and cold perfume playing with two exceptional qualities of rose and oud. Its simple, limpid script underscores the natural beauty and richness of two of perfumery’s most legendary ingredients. The freshness of rose and the woody depths of oud exalt one another, borne aloft by a warm swirl of ambergris.",
      category: Category.men,
      productType: ProductType.fragrance),
  const ProductModel(
      name: "NUIT DE FEU",
      images: [
        "assets/images/product/12_1.webp",
        "assets/images/product/12_2.webp",
      ],
      price: 299,
      sizes: [
        "100ML",
        "200ML",
      ],
      description:
          "In the dark of night, scents of incense rise from the shadowy hollows in the dunes. Plunged into the icy night, the desert seems frozen under an endlessly star-studded sky. In the heart of this darkness, a camp fire is crackling, its dancing flames warm the travelers, its smoke curling upwards into the sky. This moment, this scent of eternity, has inspired the Master Perfumer Jacques Cavallier Belletrud to create a vibrant tribute to incense, a sacred scent revered down the ages and across cultures. It is the signature ingredient in Nuit de Feu, with three exceptional essences in its trail. Softened by an exclusive infusion of natural leather, and glorified by a powerful musk accord, the incense molds the mystical scrolls of oud wood into a perfume that resonates with the history of the world.",
      category: Category.men,
      productType: ProductType.fragrance),
];
