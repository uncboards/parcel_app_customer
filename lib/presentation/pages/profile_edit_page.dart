import 'package:flutter/material.dart';
import 'package:parcell_app_customer/presentation/shared/theme.dart';
import 'package:parcell_app_customer/presentation/widgets/custom_button_widget.dart';
import 'package:parcell_app_customer/presentation/widgets/custom_text_form_field_widget.dart';

class ProfileEditPage extends StatelessWidget {
  ProfileEditPage({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

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
                  'Edit profile',
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
                controller: emailController,
                hintText: 'adika.setiawan@adex.com',
                type: TextFormFieldType.Normal,
              ),
              SizedBox(height: 24),
              CustomButtonWidget(
                labelText: 'Save',
                onPressed: () {},
              ),
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
