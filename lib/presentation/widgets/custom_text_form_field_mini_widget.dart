import 'package:flutter/material.dart';
import 'package:parcell_app_customer/presentation/shared/theme.dart';

class CustomTextFormFieldMiniWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String suffixText;

  const CustomTextFormFieldMiniWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    this.suffixText = '',
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
      child: TextFormField(
        style: blackTextStyle.copyWith(
          fontWeight: semiBold,
          fontSize: 16,
        ),
        cursorColor: kOrangeColor,
        decoration: InputDecoration(
          fillColor: kWhiteColor,
          filled: true,
          hintText: '$hintText',
          hintStyle: greyTextStyle.copyWith(),
          suffixIcon: Container(
            padding: EdgeInsets.only(
              right: 16,
              top: 19,
              bottom: 19,
            ),
            child: Text(
              '$suffixText',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16,
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              style: BorderStyle.none,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              style: BorderStyle.none,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              style: BorderStyle.none,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              style: BorderStyle.none,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              style: BorderStyle.none,
            ),
          ),
          contentPadding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 19,
            bottom: 19,
          ),
        ),
      ),
    );
  }
}
