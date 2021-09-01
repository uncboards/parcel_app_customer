import 'package:flutter/material.dart';
import 'package:parcell_app_customer/presentation/shared/theme.dart';
import 'package:parcell_app_customer/presentation/widgets/custom_button_widget.dart';
import 'package:parcell_app_customer/presentation/widgets/custom_text_form_field_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget logoSection() {
      return Container(
        width: 200,
        height: 62,
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 160,
          bottom: 72,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/logo_adex.png'),
          ),
        ),
      );
    }

    Widget formSection() {
      return Container(
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CustomTextFormFieldWidget(
                controller: usernameController,
                hintText: 'ADIKA112',
                prefixText: 'Enter ID',
              ),
              SizedBox(height: 16),
              CustomTextFormFieldWidget(
                controller: passwordController,
                hintText: '●●●●●●●●',
                prefixText: 'Password',
                obscureText: true,
                type: TextFormFieldType.PrefixAndSuffix,
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/forgot-password');
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Forgot password?',
                    style: greyTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              CustomButtonWidget(
                labelText: 'Login',
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                },
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Don\'t have an account? Register',
                    style: greyTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
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
                logoSection(),
                formSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
