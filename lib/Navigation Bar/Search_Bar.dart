import 'package:flutter/material.dart';
class SearchBarScreen extends StatefulWidget {
  @override
  _SearchBarScreenState createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  TextEditingController _searchController = TextEditingController();
var searchText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   title: Text('Search Bar Example'),
      // ),
    //   body: Column(
    //       children: [
    //   Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: TextField(
    //     onChanged: (value) {
    //       setState(() {
    //         searchText = value;
    //       });
    //     },
    //     decoration: InputDecoration(
    //       hintText: 'Search...',
    //       prefixIcon: Icon(Icons.search),
    //       border: OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(10),
    //       ),
    //     ),
    //   ),
    // ),]
    // ),
    );
  }
}
