import 'package:flutter/material.dart';
import '../../app_colors.dart';


class PhotoUploadIcon extends StatelessWidget {
  final VoidCallback onTap;

  const PhotoUploadIcon({required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onTap,
      backgroundColor: AppColors.primary,
      child: const Icon(Icons.add, color: AppColors.background),
    );
  }
}
