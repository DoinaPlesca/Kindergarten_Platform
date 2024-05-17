import 'dart:io';
import 'package:flutter/material.dart';
import '../models/photo_model.dart';

class PhotoGridWidget extends StatelessWidget {
  final List<Photo> photos;

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
        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: photo.isLocal
                    ? Image.file(
                  File(photo.url),
                  fit: BoxFit.cover,
                )
                    : Image.network(
                  photo.url,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  photo.description,
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
