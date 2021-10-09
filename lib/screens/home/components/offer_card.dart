import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.16,
      width: size.width,
      decoration: const BoxDecoration(
        color: Colors.greenAccent,
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          stops: [0.1, 0.3, 0.6, 0.9],
          colors: [
            Color(0xff4699bd),
            Color(0xff7cbdc7),
            Color(0xff4daa8f),
            Color(0xff57b7a6),
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          Text(
            "This weekend only",
            style: EasyBuyTheme.discountTitleItalic,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "30% OFF IN ALL PRODUCT",
            style: EasyBuyTheme.discountTextPercentage,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Shop Now",
            style: EasyBuyTheme.discountTitleItalic,
          ),
        ],
      ),
    );
  }
}
