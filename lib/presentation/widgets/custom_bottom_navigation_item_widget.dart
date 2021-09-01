import 'package:flutter/material.dart';
import 'package:parcell_app_customer/businesslogic/cubit/page_cubit.dart';
import 'package:parcell_app_customer/presentation/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationItemWidget extends StatelessWidget {
  final int index;
  final IconData iconData;

  const CustomBottomNavigationItemWidget({
    Key? key,
    required this.index,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Icon(
            iconData,
            size: 24,
            color: context.read<PageCubit>().state == index
                ? kBlueColor
                : kGreyColor,
          ),
          Container(),
        ],
      ),
    );
  }
}
