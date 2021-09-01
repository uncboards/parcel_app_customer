import 'package:flutter/material.dart';
import 'package:parcell_app_customer/presentation/shared/theme.dart';
import 'package:parcell_app_customer/presentation/widgets/custom_button_widget.dart';
import 'package:parcell_app_customer/presentation/widgets/custom_text_form_field_mini_widget.dart';
import 'package:parcell_app_customer/presentation/widgets/custom_text_form_field_widget.dart';

class RatePage extends StatelessWidget {
  RatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget contentSection() {
      return Container(
        margin: EdgeInsets.only(
          top: 80,
          left: 24,
          right: 24,
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Calculate shipment rate',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
            ),
            SizedBox(height: 24),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Destination',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 8),
            CustomTextFormFieldWidget(
              controller: TextEditingController(),
              hintText: 'St. Wonopringgo, Pekalongan',
              prefixText: 'From',
              type: TextFormFieldType.Prefix,
            ),
            SizedBox(height: 12),
            CustomTextFormFieldWidget(
              controller: TextEditingController(),
              hintText: 'St. Francisco, Semarang',
              prefixText: 'To',
              type: TextFormFieldType.Prefix,
            ),
            SizedBox(height: 12),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Weight',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomTextFormFieldMiniWidget(
                      controller: TextEditingController(),
                      hintText: '1',
                      suffixText: 'kg',
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(),
                  )
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Dimension',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextFormFieldMiniWidget(
                      controller: TextEditingController(),
                      hintText: '1',
                      suffixText: 'cm',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                  ),
                  Expanded(
                    child: CustomTextFormFieldMiniWidget(
                      controller: TextEditingController(),
                      hintText: '1',
                      suffixText: 'cm',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                  ),
                  Expanded(
                    child: CustomTextFormFieldMiniWidget(
                      controller: TextEditingController(),
                      hintText: '1',
                      suffixText: 'cm',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            CustomButtonWidget(
              labelText: 'Search',
              onPressed: () {},
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: kOrangeColor,
        ),
        preferredSize: Size(0, 0),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                contentSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
