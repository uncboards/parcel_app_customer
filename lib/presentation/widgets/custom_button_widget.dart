import 'package:flutter/material.dart';
import 'package:parcell_app_customer/presentation/shared/theme.dart';

class CustomButtonWidget extends StatelessWidget {
  final String labelText;
  final Color labelColor;
  final Function() onPressed;
  final Color backgroundColor;
  final double width;

  const CustomButtonWidget({
    Key? key,
    required this.labelText,
    required this.onPressed,
    this.labelColor = kWhiteColor,
    this.backgroundColor = kOrangeColor,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kShadowColor,
            blurRadius: 8,
            offset: Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: EdgeInsets.symmetric(
            vertical: 12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          '$labelText',
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
            color: labelColor,
          ),
        ),
      ),
    );
  }
}
