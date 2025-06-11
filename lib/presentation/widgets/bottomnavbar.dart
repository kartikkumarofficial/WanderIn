import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bottomnavbar extends StatefulWidget {

  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined, size: 30),
          label: "Explore",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline, size: 30),
          activeIcon: Icon(Icons.favorite),
          label: "Wishlists",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.tips_and_updates_outlined, size: 30),
          label: "Trips",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.message, size: 30),
          label: "Messages",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline, size: 30),
          activeIcon: Icon(CupertinoIcons.profile_circled),
          label: "Profile",
        ),
      ],
    );
  }
}
