import 'package:easybuy/model/product_type.dart';
import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

class BottomSheetSelect extends StatelessWidget {
  const BottomSheetSelect({
    Key? key,
    required this.headerLabel,
    required this.onItemPress,
    required this.data,
  }) : super(key: key);

  final String headerLabel;
  final Function onItemPress;
  final List<String> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: data.length * 105,
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
            itemCount: data.length,
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
                          child: SizedBox(
                            height: 50,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                data[index],
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
