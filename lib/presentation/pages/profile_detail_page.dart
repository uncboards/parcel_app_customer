import 'package:flutter/material.dart';
import 'package:parcell_app_customer/presentation/shared/theme.dart';
import 'package:parcell_app_customer/presentation/widgets/custom_button_widget.dart';

class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({Key? key}) : super(key: key);

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
                'Profile',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
            ),
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: kShadowColor,
                    blurRadius: 8,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Full Name',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'ADIKA SETIAWAN',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Phone Number',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '+62857-7773-0343',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'adika.setiawan@adex.com',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            CustomButtonWidget(
              labelText: 'Edit Profile',
              onPressed: () {
                Navigator.pushNamed(context, '/profile-edit');
              },
            ),
            SizedBox(height: 12),
            CustomButtonWidget(
              labelText: 'Edit Password',
              onPressed: () {
                Navigator.pushNamed(context, '/profile-password');
              },
              labelColor: kOrangeColor,
              backgroundColor: kSemiOrangeColor,
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
          ListView(
            children: [
              contentSection(),
            ],
          )
        ],
      ),
    );
  }
}
