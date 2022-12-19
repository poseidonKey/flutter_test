import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chatting/chatting_screen.dart';
import 'home/home_screen.dart';
import 'my_carrot/my_carrot_screen.dart';
import 'near_me/near_me_screen.dart';
import 'neighborhood_life/neighborhood_life_screen.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: [
        const HomeScreen(),
        NeighborhoodLifeScreen(),
        NearMeScreen(),
        const ChattingScreen(),
        const MyCarrotScreen()
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(label: '홈', icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(
              label: '동네생활', icon: Icon(CupertinoIcons.square_on_square)),
          BottomNavigationBarItem(
              label: '내 근처', icon: Icon(CupertinoIcons.placemark)),
          BottomNavigationBarItem(
              label: '채팅', icon: Icon(CupertinoIcons.chat_bubble_2)),
          BottomNavigationBarItem(
              label: '나의 당근', icon: Icon(CupertinoIcons.person)),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
      ),
    );
  }
}
