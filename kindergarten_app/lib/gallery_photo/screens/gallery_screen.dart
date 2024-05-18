import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:kindergarten_app/gallery_photo/bloc/photo_bloc.dart';
import 'package:kindergarten_app/gallery_photo/bloc/photo_state.dart';
import 'package:kindergarten_app/gallery_photo/widgets/photo_grid_widget.dart';
import 'package:kindergarten_app/gallery_photo/widgets/photo_upload_icon.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    context.read<GalleryBloc>().getLastPhotos();
  }

  Future<void> _addPhoto() async {
    if (kIsWeb) {
      // Use file_picker for web
      final result = await FilePicker.platform.pickFiles(type: FileType.image);

      if (result != null && result.files.single.bytes != null) {
        Uint8List fileBytes = result.files.single.bytes!;
        String fileName = result.files.single.name;
        final base64String = base64Encode(fileBytes);
        final dataUri = 'data:image/jpeg;base64,$base64String';

        context.read<GalleryBloc>().addNewPhoto(dataUri, fileName);
      }
    } else {
      // Use image_picker for mobile
      final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        final String filePath = pickedFile.path;
        print('Picked file path: $filePath');  // Debug print

        // Check if the file exists
        final fileExists = await File(filePath).exists();
        print('File exists: $fileExists');  // Debug print

        if (fileExists) {
          context.read<GalleryBloc>().addNewPhoto(filePath, 'New Photo');
        } else {
          print('File does not exist at the picked path.');  // Debug print
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: BlocBuilder<GalleryBloc, GalleryState>(
        builder: (context, state) {
          return PhotoGridWidget(photos: state.lastPhotos);
        },
      ),
      floatingActionButton: PhotoUploadIcon(onTap: _addPhoto),
    );
  }
}
