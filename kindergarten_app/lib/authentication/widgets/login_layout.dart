import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_app/authentication/bloc/login_state.dart';
import 'package:kindergarten_app/profile/screens/profile_page.dart';
import 'login_form.dart';
import '../bloc/login_bloc.dart';

Widget buildLoginLayout(BuildContext context) {
  return BlocListener<LoginBloc, LoginState>(
    listener: (context, state) {
      if (state.authenticated) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ProfilePage(
              username: state.name ?? '',
              children: state.Children,
              jwt: state.jwt ?? '',
            ),
          ),
        );
      }
    },
    child: LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: constraints.maxWidth < 600 ? constraints.maxWidth : 600,
                ),
                child: LoginForm(
                  onLogin: (username, password) {
                    context.read<LoginBloc>().signIn(
                      password: password,
                      email: username,
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}
