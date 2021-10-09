import 'package:easybuy/model/product.dart';
import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

class CatrgoryScreen extends StatelessWidget {
  const CatrgoryScreen(
      {Key? key, required this.pageTitle, required this.category})
      : super(key: key);

  final String? pageTitle;
  final Category? category;

  @override
  Widget build(BuildContext context) {
    List<ProductModel> myProducts =
        demoProducts.where((i) => i.category == category).toList();

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(pageTitle!),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: EasyBuyTheme.paddingS),
            child: const Icon(Icons.local_mall_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(EasyBuyTheme.paddingL),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            mainAxisExtent: 440,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: EasyBuyTheme.paddingL,
            mainAxisSpacing: EasyBuyTheme.paddingL,
          ),
          itemCount: myProducts.length,
          itemBuilder: (BuildContext ctx, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  elevation: 1,
                  child: Container(
                    height: 320,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorLight),
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
                            color: Colors.redAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: EasyBuyTheme.paddingL,
                ),
                Text(
                  myProducts[index].name!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline4,
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
                myProducts[index].colors != null
                    ? Row(
                        children: [
                          Container(
                            height: EasyBuyTheme.borderRadiusL * 2,
                            width: EasyBuyTheme.borderRadiusL * 2,
                            decoration: BoxDecoration(
                              color: myProducts[index].colors![0].colorCode,
                              borderRadius: BorderRadius.circular(
                                  EasyBuyTheme.borderRadiusL),
                            ),
                          ),
                          // myProducts[index].colors![1].colorCode != null
                          //     ? Container(
                          //         height: EasyBuyTheme.borderRadiusL * 2,
                          //         width: EasyBuyTheme.borderRadiusL * 2,
                          //         decoration: BoxDecoration(
                          //           color:
                          //               myProducts[index].colors![1].colorCode,
                          //           borderRadius: BorderRadius.circular(
                          //               EasyBuyTheme.borderRadiusL),
                          //         ),
                          //       )
                          //     : const SizedBox(),
                        ],
                      )
                    : const SizedBox(),
              ],
            );
          },
        ),
      ),
    );
  }
}
