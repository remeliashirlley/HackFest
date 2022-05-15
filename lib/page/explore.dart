import  'package:flutter/material.dart';
import '../category.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

  List <Category> categories=[
   Category('Furniture','123s'),
   Category('Home Decor','123s'),
   Category('Clothing','123s'),
   Category('Cars & Bicycles','123s'),
   Category('Accessories','123s'),
   Category('Gardening','123s'),
   Category('Stationery','123s')
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(25, 114, 120, 1),
        title: Text('Explore'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        // children: <Widget>[
        //   Container(
        //     margin:EdgeInsets.all(10),
        //     padding: EdgeInsets.symmetric(
        //       horizontal: 10,
        //       vertical:7,
        //     ),
        //     decoration: BoxDecoration(
        //       color: Colors.black.withOpacity(0.4),
        //       borderRadius: BorderRadius.circular(20)
        //     ),
        //     child:TextField(
        //       style: TextStyle(color:Colors.black),
        //       decoration: InputDecoration(
        //         enabledBorder: InputBorder.none,
        //         focusedBorder: InputBorder.none,
        //         icon:Icon(Icons.search),
        //         hintText: 'Search',
        //         hintStyle: TextStyle(color: Colors.black),
        //       ),
        //     ),
        //   ),
        // ]
        children:categories.map((category)=>categoryCard(category:category)).toList(),
  ));}

class categoryCard extends StatelessWidget {

  final Category category;

  categoryCard({required this.category})
  {}
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  category.name,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 6),
              ],
            )
        )
    );
  }
}
