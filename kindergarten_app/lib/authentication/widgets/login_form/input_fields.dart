/*
import 'package:flutter/material.dart';

import '../../../app_colors.dart';

class InputFields extends StatefulWidget {
  const InputFields({super.key});

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
        child: buildInputFields(context)); // Pass context here
  }

  Widget buildInputFields(BuildContext context) { // Receive context here
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildAuthenticationText(),
        const SizedBox(height: 20),
        buildUsernameField(context),
        const SizedBox(height: 10),
        buildPasswordField(context),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget buildAuthenticationText() {
    return const Text(
      'Authentication',
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
         color: AppColors.blackCoffee
      ),
    );
  }

  Widget buildUsernameField(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextFormField(
        controller: usernameController,
        decoration: const InputDecoration(
          labelText: 'Username',
          filled: true,
          fillColor:AppColors.babyPowder,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget buildPasswordField(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextFormField(
        controller: passwordController,
        obscureText: true,
        decoration: const InputDecoration(
          labelText: 'Password',
          filled: true,
          fillColor: AppColors.babyPowder,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
*/
