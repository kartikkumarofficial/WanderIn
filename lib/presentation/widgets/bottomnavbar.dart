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
      items: [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.compass, size: 25),
          label: "Explore",

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline, size: 30),
          activeIcon: Icon(Icons.favorite),
          label: "Wishlist",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.houseChimneyUser, size: 30),
          label: "Host",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat, size: 30),
          label: "Messages",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline, size: 30),
          activeIcon: Icon(FontAwesomeIcons.user),
          label: "Profile",
        ),
      ],
    );
  }
}
