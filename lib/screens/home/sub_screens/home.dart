import 'package:easybuy/model/product.dart';
import 'package:easybuy/screens/home/components/category_image.dart';
import 'package:easybuy/screens/home/components/latest_products.dart';
import 'package:easybuy/screens/home/components/offer_card.dart';
import 'package:easybuy/screens/home/sub_screens/category.dart';
import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OfferCard(size: size),
            CategoryImage(
              size: size,
              label: "Women",
              image: "assets/images/cate1.jpeg",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CatrgoryScreen(
                      pageTitle: 'Women',
                      category: Category.women,
                    ),
                  ),
                );
              },
            ),
            CategoryImage(
              size: size,
              label: "Men",
              image: "assets/images/cate2.jpeg",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CatrgoryScreen(
                      pageTitle: "Men",
                      category: Category.men,
                    ),
                  ),
                );
              },
            ),
            CategoryImage(
              size: size,
              label: "Accesories",
              image: "assets/images/cate3.jpeg",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CatrgoryScreen(
                      pageTitle: "Accesories",
                      category: Category.accessories,
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.all(EasyBuyTheme.paddingM),
              child: Text(
                "Latest Products",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            const LatestProducts(),
          ],
        ),
      ),
    );
  }
}
