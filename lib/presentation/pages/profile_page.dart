import 'package:flutter/material.dart';
import 'package:parcell_app_customer/businesslogic/cubit/page_cubit.dart';
import 'package:parcell_app_customer/presentation/shared/theme.dart';
import 'package:parcell_app_customer/presentation/widgets/custom_button_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parcell_app_customer/presentation/widgets/custom_setting_item_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsets.only(
              left: 24,
              right: 24,
              top: 56,
            ),
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profile-detail');
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ADIKA SETIAWAN',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '+62857-7773-0343',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomSettingItemWidget(
                      label: 'Language',
                      onTap: () {},
                    ),
                    Divider(),
                    CustomSettingItemWidget(
                      label: 'Clear Cache',
                      onTap: () {},
                    ),
                    Divider(),
                    CustomSettingItemWidget(
                      label: 'Contact Us',
                      onTap: () {},
                    ),
                    Divider(),
                    CustomSettingItemWidget(
                      label: 'FAQ',
                      onTap: () {},
                    ),
                    Divider(),
                    CustomSettingItemWidget(
                      label: 'Privacy and Policy',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomSettingItemWidget(
                      label: 'Share',
                      onTap: () {},
                    ),
                    Divider(),
                    CustomSettingItemWidget(
                      label: 'Get the latest version',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              CustomButtonWidget(
                labelText: 'Logout',
                onPressed: () {
                  context.read<PageCubit>().emit(0);
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/login', (route) => false);
                },
                backgroundColor: kBlueColor,
              ),
              SizedBox(height: 112),
            ],
          ),
        ],
      ),
    );
  }
}
