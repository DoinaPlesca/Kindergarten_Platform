import 'package:flutter/material.dart';

class PhotoUploadIcon extends StatelessWidget {
  final VoidCallback onTap;

  const PhotoUploadIcon({required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onTap,
      child: const Icon(Icons.add),
    );
  }
}
