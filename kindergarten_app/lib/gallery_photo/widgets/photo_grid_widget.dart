import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:kindergarten_app/gallery_photo/models/photo_model.dart';

class PhotoGridWidget extends StatelessWidget {
  final List<Gallery> photos;

  const PhotoGridWidget({required this.photos, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.75,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        final photo = photos[index];
        final photoUrl = photo.photourl ?? '';
        final description = photo.description ?? '';

        Widget imageWidget;
        if (photoUrl.startsWith('data:image')) {
          try {
            final base64Data = photoUrl.split(',')[1];
            final imageData = base64Decode(base64Data);
            imageWidget = Image.memory(
              imageData,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Center(child: Text('Invalid image'));
              },
            );
          } catch (e) {
            imageWidget = const Center(child: Text('Invalid base64 image'));
          }
        } else {
          imageWidget = const Center(child: Text('Unsupported image type'));
        }

        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: imageWidget),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description,
                  style: const TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
