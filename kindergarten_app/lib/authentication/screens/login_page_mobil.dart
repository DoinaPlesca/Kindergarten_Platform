import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:kindergarten_app/home/screens/home_page.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import '../../app_colors.dart';
import '../widgets/login_form/input_fields.dart';
import '../widgets/login_form/login_button.dart';
import '../widgets/image_section.dart';

class LoginPageMobile extends StatelessWidget {
  const LoginPageMobile({Key? key}): super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.celeste,
        child: buildLoginLayout(context), // Pass context
      ),
    );
  }

  Widget buildLoginLayout(BuildContext context) { // Receive context
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: buildLoginForm(context), // Pass context
              ),
            ),
          ),
        ),
        const Expanded(
          child: ImageSection(),
        ),
      ],
    );
  }

  Widget buildLoginForm(BuildContext context) { // Receive context
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InputFields(),
        const SizedBox(height: 20),
        LoginButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(username: ''),
              ),
            );
          },
        ),
      ],
    );
  }
}

