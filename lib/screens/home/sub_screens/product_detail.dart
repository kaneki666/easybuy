import 'package:easybuy/model/product.dart';
import 'package:easybuy/model/product_type.dart';
import 'package:easybuy/screens/home/components/bottomsheet_select.dart';
import 'package:easybuy/screens/home/components/build_app_bar.dart';
import 'package:easybuy/screens/home/components/filter_product_type.dart';
import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

class ProductDetailsScren extends StatelessWidget {
  const ProductDetailsScren({Key? key, required this.product})
      : super(key: key);
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(product.name),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: EasyBuyTheme.paddingL),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: product.images!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          right: size.height * 0.02,
                          top: size.height * 0.02,
                          bottom: size.height * 0.02),
                      child: Image.asset(
                        product.images![index],
                        height: size.height * 0.46,
                        width: size.width * 0.7,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              product.colors != null
                  ? Text(
                      product.colors![0].colorName!,
                      style: Theme.of(context).textTheme.caption,
                    )
                  : Container(),
              product.colors != null
                  ? Padding(
                      padding: EdgeInsets.only(top: EasyBuyTheme.paddingM),
                      child: SizedBox(
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: product.colors!.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Material(
                                elevation: 2,
                                borderRadius: BorderRadius.circular(40 / 2),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: product.colors![index].colorCode,
                                    borderRadius: BorderRadius.circular(40 / 2),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  : Container(),
              Padding(
                padding: EdgeInsets.only(
                    top: EasyBuyTheme.paddingL, right: EasyBuyTheme.paddingL),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropDownBottomSheet(
                      label: "Select Size",
                      icon: Icons.arrow_drop_down_outlined,
                      onPress: () {
                        showModalBottomSheet<void>(
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return BottomSheetSelect(
                              headerLabel: "Size Guide",
                              data: product.sizes!,
                              onItemPress: () {},
                            );
                          },
                        );
                      },
                    ),
                    DropDownBottomSheet(
                      label: "Select Quantity",
                      icon: Icons.arrow_drop_down_outlined,
                      onPress: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DropDownBottomSheet extends StatelessWidget {
  const DropDownBottomSheet({
    Key? key,
    required this.label,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  final String label;
  final IconData icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 50,
        width: size.width * 0.4,
        foregroundDecoration: BoxDecoration(
          border:
              Border.all(color: Theme.of(context).primaryColorDark, width: 0.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Icon(
              icon,
            )
          ],
        ),
      ),
    );
  }
}
