import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:kindergarten_app/gallery_photo/models/photo_model.dart';

class PhotoGridWidget extends StatelessWidget {
  final List<Gallery> photos;
  final List<Uint8List?> photoData;

  const PhotoGridWidget({required this.photos, required this.photoData, Key? key}) : super(key: key);

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
          if (index < photoData.length && photoData[index] != null) {
            /// Decodare base64 imagine
            imageWidget = Image.memory(
              photoData[index]!,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Center(child: Text('Invalid image'));
              },
            );
          } else {
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
