import 'package:flutter/material.dart';
import 'package:parcell_app_customer/presentation/shared/theme.dart';
import 'package:parcell_app_customer/presentation/widgets/custom_button_widget.dart';
import 'package:parcell_app_customer/presentation/widgets/custom_text_form_field_widget.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget formSection() {
      return Container(
        margin: EdgeInsets.only(
          top: 80,
          left: 24,
          right: 24,
        ),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create your profile',
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
                  'Full Name',
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 8),
              CustomTextFormFieldWidget(
                controller: usernameController,
                hintText: 'ADIKA SETIAWAN',
                type: TextFormFieldType.Normal,
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
              SizedBox(height: 8),
              CustomTextFormFieldWidget(
                controller: phoneController,
                hintText: '+6285777730343',
                type: TextFormFieldType.Normal,
              ),
              SizedBox(height: 12),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 8),
              CustomTextFormFieldWidget(
                controller: passwordController,
                hintText: '●●●●●●●●',
                obscureText: true,
                type: TextFormFieldType.Suffix,
              ),
              SizedBox(height: 24),
              CustomButtonWidget(
                labelText: 'Register',
                onPressed: () {},
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Already have an account? Login',
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
                formSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
