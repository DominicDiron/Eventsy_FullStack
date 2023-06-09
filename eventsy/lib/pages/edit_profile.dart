//import 'package:eventsy/pages/profile.dart';
import 'dart:io';
import 'package:eventsy/utils/userPreference.dart';
import 'package:eventsy/widgets/buttonWidget.dart';
import 'package:eventsy/widgets/profileWidget.dart';
import 'package:eventsy/widgets/textFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import '../model/user.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late User user;

  @override
  void initState() {
    super.initState();
    user = UserPreference.getUser();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 219, 219),
      appBar: AppBar(
        leading: BackButton(),
        title: const Text(
          'Edit Profile',
          style: TextStyle(
            fontFamily: 'Arial',
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 20.0),
          ProfileWidget(
            imagePath: user.imagePath,
            isEdit: true,
            onClicked: () async {
              final image =
                  await ImagePicker().getImage(source: ImageSource.gallery);

              if (image == null) return;

              final directory = await getApplicationDocumentsDirectory();
              final name = basename(image.path);
              final imageFile = File("${directory.path}/$name");
              final newImage = await File(image.path).copy(imageFile.path);

              setState(() => user = user.copy(imagePath: newImage.path));
            },
          ),
          const SizedBox(height: 20.0),
          TextFieldWidget(
            label: 'Full Name',
            text: user.name,
            onChanged: (name) {
              user = user.copy(name: name);
            },
          ),
          const SizedBox(height: 20.0),
          TextFieldWidget(
            label: 'Email',
            text: user.email,
            onChanged: (email) {
              user = user.copy(email: email);
            },
          ),
          const SizedBox(height: 20.0),
          TextFieldWidget(
            label: 'About',
            text: user.about,
            maxLine: 5,
            onChanged: (about) {
              user = user.copy(about: about);
            },
          ),
          const SizedBox(height: 20.0),
          ButtonWidget(
              text: 'Save',
              onClicked: () {
                UserPreference.setUser(user);
                Navigator.of(context).pop();
              }),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
