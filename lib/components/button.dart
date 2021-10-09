import 'package:easybuy/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.onPress,
    required this.btnColor,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback onPress;
  final Color btnColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String theme = 'Light';
    return GestureDetector(
      onTap: onPress,
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(EasyBuyTheme.borderRadiusS),
        child: Container(
          height: 50,
          width: size.width * 0.8,
          decoration: BoxDecoration(
            color: btnColor,
            borderRadius: BorderRadius.circular(EasyBuyTheme.borderRadiusS),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
      ),
    );
  }
}
