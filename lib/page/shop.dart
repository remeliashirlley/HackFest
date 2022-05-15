import  'package:flutter/material.dart';
import 'dart:developer';

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
      body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(4),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: marketImages
      )
  );
}

final marketImages = List<TextButton>.generate(
    6, (i) =>
    TextButton(
      onPressed: () {},
      child:  Image.asset('Images/Marketplace/pic$i.png')
      )
      );

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}