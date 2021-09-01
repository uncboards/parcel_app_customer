import 'package:flutter/material.dart';
import 'package:parcell_app_customer/presentation/shared/theme.dart';

enum TextFormFieldType {
  Normal,
  Prefix,
  Suffix,
  PrefixAndSuffix,
}

class CustomTextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String prefixText;
  final bool obscureText;
  final TextFormFieldType type;

  const CustomTextFormFieldWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    this.prefixText = '',
    this.obscureText = false,
    this.type = TextFormFieldType.Prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case TextFormFieldType.Normal:
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
            obscureText: obscureText,
            cursorColor: kOrangeColor,
            decoration: InputDecoration(
              fillColor: kWhiteColor,
              filled: true,
              hintText: '$hintText',
              hintStyle: greyTextStyle.copyWith(),
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
      case TextFormFieldType.Suffix:
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
            obscureText: obscureText,
            cursorColor: kOrangeColor,
            decoration: InputDecoration(
              fillColor: kWhiteColor,
              filled: true,
              hintText: '$hintText',
              hintStyle: greyTextStyle.copyWith(),
              suffixIcon: GestureDetector(
                onTap: () {},
                child: Icon(Icons.visibility_off),
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
      case TextFormFieldType.PrefixAndSuffix:
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
            obscureText: obscureText,
            cursorColor: kOrangeColor,
            decoration: InputDecoration(
              fillColor: kWhiteColor,
              filled: true,
              hintText: '$hintText',
              hintStyle: greyTextStyle.copyWith(),
              prefixIcon: Container(
                width: 104,
                padding: EdgeInsets.only(
                  left: 16,
                  top: 19,
                  bottom: 19,
                ),
                child: Text(
                  '$prefixText',
                  style: greyTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                ),
              ),
              suffixIcon: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.visibility_off,
                  color: kGreyColor,
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
                right: 16,
                top: 19,
                bottom: 19,
              ),
            ),
          ),
        );
      case TextFormFieldType.Prefix:
      default:
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
            obscureText: obscureText,
            cursorColor: kOrangeColor,
            decoration: InputDecoration(
              fillColor: kWhiteColor,
              filled: true,
              hintText: '$hintText',
              hintStyle: greyTextStyle.copyWith(),
              prefixIcon: Container(
                width: 104,
                padding: EdgeInsets.only(
                  left: 16,
                  top: 19,
                  bottom: 19,
                ),
                child: Text(
                  '$prefixText',
                  style: greyTextStyle.copyWith(
                    fontWeight: semiBold,
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
                right: 16,
                top: 19,
                bottom: 19,
              ),
            ),
          ),
        );
    }
  }
}
