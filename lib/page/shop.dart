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
      body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(4),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children:
          List<TextButton>.generate(
              6, (i) =>
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SecondRoute())
                    );
                  },
                  child:  Image.asset('Images/Marketplace/pic$i.png')
              )
          )
      )
  );
}



class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(25, 114, 120, 1),
        title: const Text('Marketplace'),
      ),
      body: Center(
        child: Column(
            children: [
              Text("Vintage Car turned Pool Table"),
              Image.asset('Images/Marketplace/pic0.png'),
              Text("Alex Wang"),
              Text("Price: \$500"),
              ElevatedButton(
                style: ButtonStyle (
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(196, 69, 54, 1))
                ),
                  onPressed: () {},
                  child: Text("Chat with Seller / Buy Now")
              )
            ]
        )
        ),
      );
  }
}