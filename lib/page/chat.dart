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
                  Image.asset('Images/chat/chat0.png'),
                  Text("""10.32pm - 
handyManny: @AlexNg Where did you purchase the drills you used?



gardeningQueen: This looks amazing! Thank you for the inspiration""")
                          
      ]
            )]
          ),
      );
}
final List<Row> posts = [
  Row()
];