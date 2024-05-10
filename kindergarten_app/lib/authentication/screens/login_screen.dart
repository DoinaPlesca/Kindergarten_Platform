import 'package:flutter/material.dart';
import '../../app_colors.dart';
import '../widgets/login_layout.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: AppColors.celeste,
        child: buildLoginLayout(context),
      ),
    );
  }
}
