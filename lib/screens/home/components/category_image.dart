import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

class CategoryImage extends StatelessWidget {
  const CategoryImage(
      {Key? key,
      required this.size,
      required this.label,
      required this.image,
      required this.onPress})
      : super(key: key);

  final Size size;
  final String label;
  final String image;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.only(
          top: EasyBuyTheme.paddingM,
        ),
        child: Container(
          height: size.height * 0.22,
          width: size.width,
          child: Center(
            child: Text(
              label,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.7), BlendMode.dstATop),
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
