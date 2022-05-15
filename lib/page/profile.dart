import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(25, 114, 120, 1),
          title: Text('Profile'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('Images/amberlee.jpg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 60.0,
                width: 400.0,
                color: Color.fromRGBO(237, 221, 212, 1),
                child: Text(
                  'Name: Amber Lee',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                padding: EdgeInsets.all(20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 60.0,
                width: 400.0,
                color: Color.fromRGBO(237, 221, 212, 1),
                child: Text(
                  'Email: amberlee@hotmail.com',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                padding: EdgeInsets.all(20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 200.0,
                width: 400.0,
                color: Color.fromRGBO(237, 221, 212, 1),
                child: Text(
                  'Hobbies and Interests:',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                padding: EdgeInsets.all(20.0),
              ),
            ],
          ),
        ),
      );
}
