//import 'dart:async';
//import 'dart:convert';

import 'package:flutter/material.dart';

class ViewProfile extends StatelessWidget {
  final List list;
  final int person;

  const ViewProfile({Key? key, required this.list, required this.person})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Map<String, dynamic> map = jsonDecode(list);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          header(),
          //drawerList(),
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
          Text(
            list[person]['name'], // index - 1 is name
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            list[person]['email'], //index -2 is email
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }
}