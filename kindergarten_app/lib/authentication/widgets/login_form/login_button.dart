import 'package:flutter/material.dart';

import '../../../app_colors.dart';

class LoginButton extends StatelessWidget {
  final void Function() onPressed;

  const LoginButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildLoginButton(context); // Pass context here
  }

  Widget buildLoginButton(BuildContext context) { // Receive context here
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: AppColors.ultraRed,
        ),
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'Login',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.blackCoffee,
            ),
          ),
        ),
      ),
    );
  }
}
