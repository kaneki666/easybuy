import 'package:easybuy/model/product.dart';
import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

class LatestProducts extends StatelessWidget {
  const LatestProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 410,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: demoProducts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(EasyBuyTheme.paddingM),
            child: SizedBox(
                height: 410,
                width: 220,
                child: Column(
                  children: [
                    Material(
                      elevation: 1,
                      child: Container(
                        height: 320,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorLight),
                        child: Image.asset(
                          demoProducts[index].images![0],
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: EasyBuyTheme.paddingL,
                    ),
                    Text(
                      demoProducts[index].name!,
                      style: Theme.of(context).textTheme.headline4,
                    )
                  ],
                )),
          );
        },
      ),
    );
  }
}
