import 'package:eventsy/pages/edit_profile.dart';
import 'package:eventsy/utils/userPreference.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eventsy/model/user.dart';
import '../widgets/profileWidget.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  User user = UserPreference.getUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 219, 219, 219),
        appBar: AppBar(
          //backgroundColor: Colors.green,
          title: const Text(
            "Profile",
            style: TextStyle(
              fontFamily: 'Arial',
              color: Colors.white,
              //fontWeight: FontWeight.bold
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
              isEdit: false,
              onClicked: () async {
                await Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const EditProfile()));
                setState(() {});
              },
            ),
            BuildName(user),
            const SizedBox(height: 20.0),
            buildAbout(user),
            const SizedBox(height: 20.0),
          ],
        ));
  }
}

Widget buildAbout(User user) {
  return Container(
    //padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "About",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
        ),
        const SizedBox(height: 18.0),
        Text(user.about,
            style: const TextStyle(fontSize: 18.0), textAlign: TextAlign.left)
      ],
    ),
  );
}

Widget BuildName(User user) {
  return Column(
    children: [
      const SizedBox(
        height: 10.0,
      ),
      Text(user.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          )),
      Text(
        user.email,
        style: const TextStyle(color: Colors.grey),
      ),
      const SizedBox(height: 15.0),
      Rating(user),
    ],
  );
}

Widget Rating(User user) {
  var rating = "";
  for (int i = 0; i < user.rate; i++) {
    rating += " 🤍 ";
  }
  return Text(
    rating,
    style: const TextStyle(
        color: Colors.green, fontWeight: FontWeight.bold, fontSize: 25.0),
  );
}
