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
        showSuccessSnackBar(context, "Login successful!");

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ProfilePage(
              username: state.name ?? '',
              children: state.Children,
              jwt: state.jwt ?? '',
              isTeacher: state.isTeacher?? false ,
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

void showSuccessSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Text(message),
    duration: const Duration(seconds: 2),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}