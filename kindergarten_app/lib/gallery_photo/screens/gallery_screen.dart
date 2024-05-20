import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
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
    Uint8List? fileBytes;
    String fileName = '';

    if (kIsWeb) {
      final result = await FilePicker.platform.pickFiles(type: FileType.image);
      if (result != null && result.files.single.bytes != null) {
        fileBytes = result.files.single.bytes!;
        fileName = result.files.single.name;
      }
    } else {

      final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        final filePath = pickedFile.path;
        final file = File(filePath);
        fileBytes = await file.readAsBytes();
        fileName = pickedFile.name;
      }
    }

    if (fileBytes != null) {
      final base64String = base64Encode(fileBytes);
      final dataUri = 'data:image/jpeg;base64,$base64String';
      context.read<GalleryBloc>().addNewPhoto(dataUri, fileName);
    } else {

      print('No file selected or no bytes available');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GalleryBloc, GalleryState>(
        builder: (context, state) {
          if (state.lastPhotos.isEmpty) {
            return const Center(child: Text('No photos available'));
          }
          return PhotoGridWidget(photos: state.lastPhotos);
        },
      ),
      floatingActionButton: PhotoUploadIcon(onTap: _addPhoto),
    );
  }
}

