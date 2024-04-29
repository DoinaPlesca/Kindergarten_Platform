import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/kids.png',
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }
}
