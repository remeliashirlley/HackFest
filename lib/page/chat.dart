import  'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(25, 114, 120, 1),
        title: Text('Forum'),
      ),
      body:
        Column(
          children: [
            Row(
                children: [
                  CircleAvatar(
                                  radius: 30.0,
                                  child: ClipRRect(
                                    child: Image.asset('Images/amberlee.jpg'),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                ),
                  Text("Amber Lee")]),
            Text("[Update] Upcycled my bicyle into a counter-top/storage"),
            Image.asset("Images/chat/chat0.png"),
            Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  child: ClipRRect(
                    child: Image.asset('Images/chat/handy.jpg'),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                 Text("handyManny"),
              ]),
            Text("@AmberLee Where did you purchase the drills you used?"),
            Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  child: ClipRRect(
                    child: Image.asset('Images/chat/queen.jpg'),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                 Text("gardeningQueen"),                                      ]
            ),
            Text("This looks amazing! Thank you for the inspiration!")
          ]
        ),
      );
}
final List<Row> posts = [
  Row()
];