import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:t89/data/repo/user_repo/models/user_m.dart';

class OnboardingDialog extends StatefulWidget {
  final VoidCallback onSubmit;

  OnboardingDialog({required this.onSubmit});

  @override
  _OnboardingDialogState createState() => _OnboardingDialogState();
}

class _OnboardingDialogState extends State<OnboardingDialog> {
  TextEditingController _companyNameController = TextEditingController();
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  Future<void> _submit() async {
    if (_companyNameController.text.isEmpty) {
      setState(() {});
      return;
    }
    String imagePath = '';
    if (_image != null) {
      final directory = await getApplicationDocumentsDirectory();
      final String fileName = path.basename(_image!.path);
      final File localImage = await _image!.copy('${directory.path}/$fileName');
      imagePath = localImage.path;
    }

    final user = User(
      companyName: _companyNameController.text,
      imagePath: imagePath,
    );

    // Сохранение данных пользователя
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user', user.toJson().toString());

    Navigator.of(context).pop();
    widget.onSubmit();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Setup Your Company'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _companyNameController,
              decoration: InputDecoration(
                labelText: 'Company Name',
                errorText: _companyNameController.text.isEmpty ? 'Company name cannot be empty' : null,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: _pickImage,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: _image == null
                    ? const Icon(Icons.camera_alt, size: 50, color: Colors.grey)
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.file(
                          _image!,
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: _submit,
          child: Text('Next'),
        ),
      ],
    );
  }
}
