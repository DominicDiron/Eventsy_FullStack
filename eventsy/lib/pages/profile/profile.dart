import 'package:eventsy/pages/edit_profile.dart';
import 'package:eventsy/pages/profile/request.dart';
import 'package:eventsy/pages/profile/share.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import '../search/search.dart';
//import 'package:http/http.dart' as http;

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 219, 219),
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          header(),
          drawerList(),
        ],
      ),
    );
  }

  Widget header() {
    return Container(
      color: Colors.green[700],
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15.0),
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3.0),
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')),
            ),
          ),
          const Text(
            'Dominic Diron',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const Text(
            'dirondemel@gmail.com',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }

  Widget drawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          menuItem(1, 'Promotion', Icons.self_improvement),
          menuItem(2, 'Requests', Icons.group_add),
          menuItem(3, 'Friends', Icons.group),
          menuItem(4, 'Share', Icons.share),
          menuItem(5, 'Notes', Icons.note),
          menuItem(6, 'Help & Support', Icons.help),
          menuItem(7, 'Contact us', Icons.contact_mail),
          const Divider(height: 2.0),
          menuItem(8, 'Settings', Icons.settings),
          menuItem(9, 'Notifications', Icons.notifications),
          const Divider(height: 2.0),
          menuItem(10, 'Log out', Icons.logout),
        ],
      ),
    );
  }

  Future<void> bottomSheet() {
    return showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
              padding: const EdgeInsets.all(30.0),
              child: const Row(
                children: [
                  Expanded(
                    child: Text(
                      'This feature will be implement later or it will not available to you at the moment',
                      style: TextStyle(fontSize: 20.0, color: Colors.green),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ));
        });
  }

  Widget menuItem(int id, String title, IconData icon) {
    //Widget _page = Profile();
    return Material(
      child: InkWell(
        onTap: () {
          switch (id) {
            case 1:
              bottomSheet();
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Request()));
              break;
            case 3:
              bottomSheet();
              break;
            case 4:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          QRCodeGenerator(data: 'https://wa.me/+94778965078')));
              break;
            case 5:
              bottomSheet();
              break;
            case 6:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const EditProfile()));
              break;
            case 7:
            case 8:
            default:
              bottomSheet();
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                  child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              )),
              Expanded(
                  flex: 5,
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.black, fontSize: 16.0),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections { dashboard, contacts, events }