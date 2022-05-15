import  'package:flutter/material.dart';

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
    body: _buildGrid()
  );
}

Widget _buildGrid() => GridView.count(
    crossAxisCount: 1,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridTileList(2));

// String vidName1 = "Best out of waste - eco DIYs - Upcycling Ideas & Projects";
// String vidName2 = "5 Genius way to reuse old cd | old cd craft ideas | Best out of waste | Artkala";

const vidNames = ["Best out of waste - eco DIYs - Upcycling Ideas & Projects", "5 Genius way to reuse old cd | old cd craft ideas | Best out of waste | Artkala"];

List<Container> _buildGridTileList(int count) => List.generate(
    count, (i) =>
    Container(
      child:
      Column(
          children: [Image.asset('Images/Thumbnails/thumbnail$i.png'), Text(vidNames[i])]
)
)
);