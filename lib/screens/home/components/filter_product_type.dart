import 'package:easybuy/model/product_type.dart';
import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

class FilterProductType extends StatelessWidget {
  const FilterProductType(
      {Key? key,
      required this.filterProductType,
      required this.clearFilter,
      this.productTypeObj,
      required this.flitered})
      : super(key: key);

  final Function filterProductType;
  final VoidCallback clearFilter;
  final bool flitered;
  final ProductTypeModel? productTypeObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(EasyBuyTheme.paddingL),
            child: Text(
              "Filters",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          const Divider(),
          ListView.builder(
            shrinkWrap: true,
            itemCount: productTypesData.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: EasyBuyTheme.paddingL,
                        right: EasyBuyTheme.paddingL),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () =>
                              filterProductType(productTypesData[index].type!),
                          child: SizedBox(
                            height: 50,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                productTypesData[index].label!,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                          ),
                        ),
                        productTypeObj!.type == productTypesData[index].type &&
                                flitered
                            ? const Icon(Icons.done)
                            : Container()
                      ],
                    ),
                  ),
                  const Divider(),
                ],
              );
            },
          ),
          GestureDetector(
            onTap: clearFilter,
            child: Text(
              "Clear Filter",
              style: EasyBuyTheme.sortText,
            ),
          ),
        ],
      ),
    );
  }
}
