import 'package:easybuy/model/product.dart';
import 'package:easybuy/screens/home/sub_screens/product_detail.dart';
import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

class CategoryProductGrid extends StatelessWidget {
  const CategoryProductGrid({
    Key? key,
    required this.myProducts,
  }) : super(key: key);

  final List<ProductModel> myProducts;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          mainAxisExtent: 410,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: EasyBuyTheme.paddingL,
          mainAxisSpacing: EasyBuyTheme.paddingL,
        ),
        itemCount: myProducts.length,
        itemBuilder: (BuildContext ctx, index) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailsScren(
                  product: myProducts[index],
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 320,
                  child: Stack(
                    children: [
                      Image.asset(
                        myProducts[index].images![0],
                        height: 320,
                        fit: BoxFit.cover,
                      ),
                      const Positioned(
                        top: 10,
                        right: 10,
                        child: Icon(
                          Icons.favorite_outline,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: EasyBuyTheme.paddingL,
                ),
                Text(
                  myProducts[index].name!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: EasyBuyTheme.paddingM,
                ),
                Text(
                  '\$${myProducts[index].price!}',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: EasyBuyTheme.paddingS,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
