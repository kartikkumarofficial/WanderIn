import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bottomnavbar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const Bottomnavbar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      currentIndex: currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      onTap: onTap,
      items: const [
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
