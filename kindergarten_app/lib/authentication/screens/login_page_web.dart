import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_app/authentication/bloc/login_state.dart';
import 'package:kindergarten_app/authentication/widgets/login_form/login_form.dart';
import 'package:kindergarten_app/home/screens/home_page.dart';
import '../../app_colors.dart';
import '../bloc/login_bloc.dart';
import '../widgets/image_section.dart';
import '../widgets/login_form/input_fields.dart';
import '../widgets/login_form/login_button.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class LoginPageWeb extends StatelessWidget {
  const LoginPageWeb({Key? key}): super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: AppColors.celeste,
        child: buildLoginLayout(context), // Pass context
      ),
    );
  }

  Widget buildLoginLayout(BuildContext context) { // Receive context
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.authenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(username: ''),
            ),
          );
        }
      },
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: LoginForm(onLogin: (username, password) {
                  context.read<LoginBloc>().signIn(password: password, email: username);
                },)
              ),
            ),
          ),
          const Expanded(
            flex: 3,
            child: ImageSection(),
          ),
        ],
      ),
    );
  }
}