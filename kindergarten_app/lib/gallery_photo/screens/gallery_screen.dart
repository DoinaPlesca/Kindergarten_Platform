
/*
///access the bytes property instead of the path property

Photo(url: 'https://plus.unsplash.com/premium_photo-1684581969934-a96aa0a9f2d6?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8a2lkc3xlbnwwfHwwfHx8MA%3D%3D', description: 'Sample Photo 1'),
Photo(url: 'https://images.unsplash.com/photo-1658801956904-43841e89d831?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8a2lkc3xlbnwwfHwwfHx8MA%3D%3D', description: 'Sample Photo 2'),

*/

import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import '../models/photo_model.dart';
import '../widgets/photo_grid_widget.dart';
import '../widgets/photo_upload_icon.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List<Photo> _photos = [
    Photo(url: 'https://via.placeholder.com/150', description: 'Sample Photo 1'),
    Photo(url: 'https://via.placeholder.com/150', description: 'Sample Photo 2'),
  ];

  final ImagePicker _picker = ImagePicker();

  Future<void> _addPhoto() async {
    if (kIsWeb) {
      // Use file_picker for web
      final result = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );

      if (result != null && result.files.single.bytes != null) {
        Uint8List fileBytes = result.files.single.bytes!;
        String fileName = result.files.single.name;

        setState(() {
          _photos.add(Photo(
            url: 'data:image/jpeg;base64,${base64Encode(fileBytes)}',
            description: fileName,
            isLocal: false,
          ));
        });
      }
    } else {
      // Use image_picker for mobile
      final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        setState(() {
          _photos.add(Photo(
            url: pickedFile.path,
            description: 'New Photo',
            isLocal: true,
          ));
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: PhotoGridWidget(photos: _photos),
      floatingActionButton: PhotoUploadIcon(onTap: _addPhoto),
    );
  }
}
