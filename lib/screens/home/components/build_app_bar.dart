import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(title) {
  return AppBar(
    elevation: 1,
    title: Text(title),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: EasyBuyTheme.paddingL),
        child: GestureDetector(
            onTap: () {}, child: const Icon(Icons.local_mall_outlined)),
      ),
    ],
  );
}
