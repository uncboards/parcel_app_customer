import 'package:flutter/material.dart';
import 'package:parcell_app_customer/presentation/shared/theme.dart';

class CustomSettingItemWidget extends StatelessWidget {
  final String label;
  final Function() onTap;

  const CustomSettingItemWidget({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$label',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
            ),
          ],
        ),
      ),
    );
  }
}
