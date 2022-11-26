import 'package:flutter/material.dart';
import 'package:riktam_hackathon/Screens/myposts.dart';
import 'package:riktam_hackathon/Screens/home.dart';
import 'package:riktam_hackathon/Screens/starredPosts.dart';
import 'package:riktam_hackathon/Screens/newPost.dart';
import 'package:riktam_hackathon/Screens/account.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  setBottomBarIndex(index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final _tabs = [
      Home(),
      MyPosts(),
      NewPost(),
      StarredPosts(),
      MyAccount()
    ];
    return Scaffold(
      backgroundColor: Color(0xFF434856),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFF0F0F0),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xFF000000),
              ),
              label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Color(0xFF000000),
            ),
            label: "My Posts",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Color(0xFF000000),
            ),
            label: "Add Post",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: Color(0xFF000000),
            ),
            label: "Starred",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Color(0xFF000000),
            ),
            label: "My Account",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),

    );
  }
}
