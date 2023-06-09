import 'package:eventsy/pages/search/viewProfile.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final List list;
  //List listCopy =[''];

  ListWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  List getList()
  {
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, i) {
        //listCopy = list[i]['email'];
        return Card(
          //aspectRatio: 3/1,
          child: ListTile(
            leading: SizedBox(
              child: Image.network(
                  'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            ),
            title: Text(
              list[i]['name'],
              style: const TextStyle(color: Colors.black, fontSize: 20.0),
            ),
            subtitle: Text(list[i]['email']),
            
            trailing: Text(
              "${list[i]['rate']}",
              style: const TextStyle(color: Colors.amber),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ViewProfile(list: list, person: i)));
            },
          ),
        );
      },
    );
  }
}
