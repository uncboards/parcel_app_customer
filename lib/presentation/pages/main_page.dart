import 'package:flutter/material.dart';
import 'package:parcell_app_customer/businesslogic/cubit/page_cubit.dart';
import 'package:parcell_app_customer/presentation/pages/home_page.dart';
import 'package:parcell_app_customer/presentation/pages/profile_page.dart';
import 'package:parcell_app_customer/presentation/pages/rate_page.dart';
import 'package:parcell_app_customer/presentation/pages/transaction_page.dart';
import 'package:parcell_app_customer/presentation/shared/theme.dart';
import 'package:parcell_app_customer/presentation/widgets/custom_bottom_navigation_item_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcaseview/showcaseview.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return ShowCaseWidget(
            builder: Builder(
              builder: (context) => HomePage(),
            ),
          );
        case 1:
          return TransactionPage();
        case 2:
          return RatePage();
        case 3:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 56,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItemWidget(
                index: 0,
                iconData: Icons.home_outlined,
              ),
              CustomBottomNavigationItemWidget(
                index: 1,
                iconData: Icons.inbox,
              ),
              CustomBottomNavigationItemWidget(
                index: 2,
                iconData: Icons.local_shipping_outlined,
              ),
              CustomBottomNavigationItemWidget(
                index: 3,
                iconData: Icons.person_outline,
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          appBar: PreferredSize(
            child: AppBar(
              backgroundColor: kOrangeColor,
            ),
            preferredSize: Size(0, 0),
          ),
          body: SafeArea(
            child: Stack(
              children: [
                buildContent(context.read<PageCubit>().state),
                customBottomNavigation(),
              ],
            ),
          ),
        );
      },
    );
  }
}
