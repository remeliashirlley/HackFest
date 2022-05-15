import 'package:flutter/material.dart';
import 'package:hackfest_testing/page/explore.dart';
import 'package:hackfest_testing/page/videos.dart';
import 'package:hackfest_testing/page/shop.dart';
import 'package:hackfest_testing/page/profile.dart';
import 'package:hackfest_testing/page/chat.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: _buildShrineTheme(),
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final screens = [VideoPage(), ShopPage(), ChatPage(), ExplorePage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: screens[_currentIndex],
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(196, 69, 54, 1),
        selectedItemColor: Colors.white,
        // unselectedItemColor: Color.fromRGBO(237, 221, 212, 1),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Browse',
            icon: Icon(Icons.ondemand_video),
          ),
          BottomNavigationBarItem(
            label: 'Market',
            icon: Icon(Icons.shopping_bag),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Icon(Icons.explore),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}