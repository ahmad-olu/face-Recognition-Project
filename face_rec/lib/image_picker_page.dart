import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends StatefulWidget {
  const ImagePickerPage({Key? key}) : super(key: key);

  @override
  State<ImagePickerPage> createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  XFile? _imageFile;

  Future<void> pickImage(ImageSource source) async {
    try {
      final ImagePicker _picker = ImagePicker();
      final XFile? image = await _picker.pickImage(source: source);
      if (image == null) return;
      final imageTemporary = XFile(image.path);
      final bytes = await XFile(image.path).readAsBytes();
      String image64 = base64Encode(bytes);
      log(image64);
      log('-----------------image picked----------------');
      setState(() {
        this._imageFile = imageTemporary;
      });
    } on PlatformException catch (e) {
      log('---------------Failed to Pick image: $e---------------');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _imageFile != null
                ? Image.file(
                    File(_imageFile!.path),
                    width: 160,
                    height: 160,
                    fit: BoxFit.cover,
                  )
                : Container(),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => pickImage(ImageSource.gallery),
              child: const Text("pick from gallery"),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => pickImage(ImageSource.camera),
              child: const Text("pick from camera"),
            )
          ],
        ),
      ),
    );
  }
}
