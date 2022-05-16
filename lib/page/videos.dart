import  'package:flutter/material.dart';

const vidNames = ["Best out of waste - eco DIYs - Upcycling Ideas & Projects", "5 Genius way to reuse old cd | old cd craft ideas | Best out of waste | Artkala"];

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(25, 114, 120, 1),
        title: Text('Browse'),
      ),
    body:
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.count(
          crossAxisCount: 1,
          padding: const EdgeInsets.all(4),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: List<TextButton>.generate(
              2, (i) =>
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SecondRoute())
                  );
                },
                  child:
                  Column(
                      children: [Image.asset('Images/Thumbnails/thumbnail$i.png'), Text(vidNames[i])]
                  )
              )
          )
  ),
    ),);
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(25, 114, 120, 1),
        title: const Text('Video'),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
            child: Column(
                children: [
                  Image.asset('Images/Thumbnails/thumbnail0.png'),
                  Text(vidNames[0]),
                  Text("Earth Day Ideas and Earth Day Projects - Recycling DIY Room Decor Ideas. How to make the BEST out of WASTE")
                ]
            )
        ),
      ),
    );
  }
}

