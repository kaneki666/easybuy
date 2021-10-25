import 'package:easybuy/model/product.dart';
import 'package:easybuy/model/product_type.dart';
import 'package:easybuy/screens/home/components/build_app_bar.dart';
import 'package:easybuy/screens/home/components/category_product_grid.dart';
import 'package:easybuy/screens/home/components/filter_product_type.dart';
import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

class CatrgoryScreen extends StatefulWidget {
  const CatrgoryScreen(
      {Key? key, required this.pageTitle, required this.category})
      : super(key: key);

  final String? pageTitle;
  final Category? category;

  @override
  State<CatrgoryScreen> createState() => _CatrgoryScreenState();
}

class _CatrgoryScreenState extends State<CatrgoryScreen> {
  List<ProductModel> myProducts = [];
  ProductTypeModel? productTypeObj = productTypesData[0];
  bool flitered = false;

  void filterProductType(productType) {
    setState(() {
      if (mounted) {
        myProducts =
            demoProducts.where((i) => i.productType == productType).toList();
        productTypeObj = productTypesData
            .firstWhere((element) => element.type == productType);
        flitered = true;
      }
    });
    Navigator.pop(context);
  }

  void clearFilter() {
    setState(() {
      if (mounted) {
        myProducts =
            demoProducts.where((i) => i.category == widget.category).toList();
        flitered = false;
      }
    });
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      if (mounted) {
        myProducts =
            demoProducts.where((i) => i.category == widget.category).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(widget.pageTitle),
      body: Padding(
        padding: EdgeInsets.all(EasyBuyTheme.paddingL),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.7,
                  child: TextField(
                    onChanged: (e) {
                      setState(() {
                        myProducts = demoProducts
                            .where((element) => element.name!
                                .toLowerCase()
                                .contains(e.toLowerCase()))
                            .toList();
                      });
                    },
                    cursorColor: Colors.grey,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.grey,
                      ),
                      focusColor: Colors.grey,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      labelText: 'Search',
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return FilterProductType(
                          filterProductType: filterProductType,
                          clearFilter: clearFilter,
                          productTypeObj: productTypeObj,
                          flitered: flitered,
                        );
                      },
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: EasyBuyTheme.paddingM),
                    child: Text(
                      "Filter",
                      style: EasyBuyTheme.sortText,
                    ),
                  ),
                )
              ],
            ),
            CategoryProductGrid(myProducts: myProducts),
          ],
        ),
      ),
    );
  }
}
