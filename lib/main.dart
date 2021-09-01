import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parcell_app_customer/businesslogic/cubit/page_cubit.dart';
import 'package:parcell_app_customer/presentation/pages/drop_point_page.dart';
import 'package:parcell_app_customer/presentation/pages/forgot_password_page.dart';
import 'package:parcell_app_customer/presentation/pages/login_page.dart';
import 'package:parcell_app_customer/presentation/pages/main_page.dart';
import 'package:parcell_app_customer/presentation/pages/notification_page.dart';
import 'package:parcell_app_customer/presentation/pages/profile_detail_page.dart';
import 'package:parcell_app_customer/presentation/pages/profile_edit_page.dart';
import 'package:parcell_app_customer/presentation/pages/profile_password_page.dart';
import 'package:parcell_app_customer/presentation/pages/register_page.dart';
import 'package:parcell_app_customer/presentation/pages/splash_page.dart';
import 'package:parcell_app_customer/presentation/pages/tracking_detail_page.dart';
import 'package:parcell_app_customer/presentation/pages/tracking_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => SplashPage(),
          '/login': (context) => LoginPage(),
          '/register': (context) => RegisterPage(),
          '/forgot-password': (context) => ForgotPasswordPage(),
          '/main': (context) => MainPage(),
          '/profile-detail': (context) => ProfileDetailPage(),
          '/profile-edit': (context) => ProfileEditPage(),
          '/profile-password': (context) => ProfilePasswordPage(),
          '/drop-point': (context) => DropPointPage(),
          '/notification': (context) => NotificationPage(),
          '/tracking': (context) => TrackingPage(),
          '/tracking-detail': (context) => TrackingDetailPage(),
        },
      ),
    );
  }
}
