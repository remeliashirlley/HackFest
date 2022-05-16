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
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                  children: [
                    CircleAvatar(
                                    radius: 25.0,
                                    child: ClipRRect(
                                      child: Image.asset('Images/amberlee.jpg'),
                                      borderRadius: BorderRadius.circular(100.0),
                                    ),
                                  ),
                    SizedBox(width: 20),
                    Text("Amber Lee", style: TextStyle(fontSize: 15),)]),
              SizedBox(height: 20,),
              Text("[Update] Upcycled my bicyle into a countertop storage", style: TextStyle(fontSize: 15),),
              SizedBox(height: 15,),
              Image.asset("Images/chat/chat0.png",
              height: 200,
              fit: BoxFit.fitHeight,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 25.0,
                    child: ClipRRect(
                      child: Image.asset('Images/chat/handy.jpg'),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  SizedBox(width: 20),
                   Text("handyManny", style: TextStyle(fontSize: 15),),
                ]),
              SizedBox(height: 30,),
              Text("@AmberLee Where did you purchase the drills you used?", style: TextStyle(fontSize: 15),),
              SizedBox(height: 30,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 25.0,
                    child: ClipRRect(
                      child: Image.asset('Images/chat/queen.jpg'),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                   SizedBox(width: 20),
                   Text("gardeningQueen", style: TextStyle(fontSize: 15),),                                      ]
              ),
              SizedBox(height: 30,),
              Text("This looks amazing! Thank you for the inspiration!", style: TextStyle(fontSize: 15),)
            ]
          ),
        ),
      );
}
