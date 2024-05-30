import 'package:flutter/material.dart';
import '../../../app_colors.dart';

/// A form widget for user login

class LoginForm extends StatefulWidget {
  const LoginForm({required this.onLogin, super.key});

  final Function(String, String) onLogin;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void onPressed() {
    if (!formKey.currentState!.validate()) return;
    widget.onLogin(usernameController.text, passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildInputFields(context),
        const SizedBox(height: 30),
        buildLoginButton(context),
      ],
    );
  }

  Widget buildInputFields(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildAuthenticationText(),
          const SizedBox(height: 40),
          buildUsernameField(context),
          const SizedBox(height: 40),
          buildPasswordField(context),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget buildAuthenticationText() {
    return const Text(
      'Authentication',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
        letterSpacing: 1.2,
      ),
    );
  }

  Widget buildUsernameField(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500),
      child: TextFormField(
        controller: usernameController,
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'Enter your email',
          filled: true,
          fillColor: AppColors.surface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.primary, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Email cannot be empty';
          } else if (!RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+$').hasMatch(value)) {
            return 'Enter a valid email';
          }
          return null;
        },
      ),
    );
  }

  Widget buildPasswordField(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500),
      child: TextFormField(
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          filled: true,
          fillColor: AppColors.surface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.primary, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        validator: (value) => (value ?? "").isEmpty ? "The password is required for authentication" : null,
      ),
    );
  }

  Widget buildLoginButton(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.background,
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: const Text(
          'Login',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.background,
          ),
        ),
      ),
    );
  }
}
