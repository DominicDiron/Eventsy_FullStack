import 'package:eventsy/model/planner.dart';
import 'package:eventsy/widgets/listWidget.dart';
import 'package:flutter/material.dart';
//import 'package:eventsy/pages/search/viewProfile.dart';

class Search extends StatefulWidget {
  const Search({super.key});
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Planners planners = Planners();
  List listCopy = [];

  List _foundPlanners = [];
  @override
  void initState() {
    _foundPlanners = listCopy;
    super.initState();
  }

  void _filterList(String keyword) {
    List results = [];
    if (keyword.isEmpty) {
      results = listCopy;
    } else {
      results = listCopy
          .where((planner) =>
              planner['email'].toLowerCase().contains(keyword.toLowerCase()) ||
              planner['name'].toLowerCase().contains(keyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundPlanners = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //Color.fromARGB(255, 219, 219, 219),
      appBar: AppBar(
          // backgroundColor: Colors.green,
          title: const Text(
            "Search",
            style: TextStyle(
              fontFamily: 'Arial',
              color: Colors.white,
              //fontWeight: FontWeight.bold
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.qr_code_scanner),
              onPressed: () {},
            ),
          ]),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(children: [
          TextField(
            style: const TextStyle(color: Colors.green),
            decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Name or Place or Email',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                suffixIcon: const Icon(Icons.search),
                suffixIconColor: Colors.green),
            onChanged: (value) => _filterList(value),
          ),
          Expanded(
            child: FutureBuilder<List>(
                future: planners.getAllPlanners(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    listCopy = snapshot.data!;
                    //print(listCopy);
                    return ListWidget(
                        list: _foundPlanners); //snapshot.data ?? []
                    // return ListView.builder(
                    //   physics: BouncingScrollPhysics(),
                    //   itemCount: _foundPlanners.length,
                    //   itemBuilder: (context, i) {
                    //     //listCopy = list[i]['email'];
                    //     return Card(
                    //       child: ListTile(
                    //         leading: const CircleAvatar(
                    //           backgroundImage: NetworkImage(
                    //               'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    //         ),
                    //         title: Text(
                    //           _foundPlanners[i]['name'],
                    //           style: const TextStyle(
                    //               color: Colors.black, fontSize: 20.0),
                    //         ),
                    //         subtitle: Text(_foundPlanners[i]['email']),
                    //         trailing: Text(
                    //           "${_foundPlanners[i]['rate']}",
                    //           style: const TextStyle(color: Colors.amber),
                    //         ),
                    //         onTap: () {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) => ViewProfile(
                    //                       list: _foundPlanners, person: i)));
                    //         },
                    //       ),
                    //     );
                    //   },
                    // );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.green,
                      ),
                    );
                  }
                }),
          ),
        ]),
      ),
    );
  }
}
