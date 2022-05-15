import  'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(25, 114, 120, 1),
      title: Text('Marketplace'),
    ),
      body:
      Center(
        child: Text('shop'),
      )
  );
}