//************/ This wiget is creted for profile page***************** MySelf(Diron)

import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final bool isEdit;
  final VoidCallback onClicked;

  ProfileWidget(
      {Key? key,
      required this.imagePath,
      required this.isEdit,
      required this.onClicked})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(children: [
      buildImage(),
      Positioned(bottom: 0, right: 4, child: buildEditIcon(Colors.green)),
    ]));
  }

  Widget buildImage() {
    final image = imagePath.contains('http://')
        ? NetworkImage(imagePath)
        : FileImage(File(imagePath));

    return ClipOval(
      child: Material(
        child: Ink.image(
          image: image as ImageProvider,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          child: InkWell(
            onTap: onClicked,
          ),
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) {
    return Container(
        child: BuildCircle(
      color: Colors.white,
      padding: 3,
      child: BuildCircle(
        color: color,
        padding: 4.0,
        child: Icon(
          isEdit ? Icons.add_a_photo : Icons.edit,
          size: 25,
          color: Colors.white,
        ),
      ),
    ));
  }

  Widget BuildCircle(
      {required Widget child, required Color color, required double padding}) {
    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(padding),
        color: color,
        child: child,
      ),
    );
  }
}
