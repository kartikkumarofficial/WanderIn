import 'package:flutter/material.dart';

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
    return BottomNavigationBar (
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.search,size: 35,),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outline,size: 35,),label: "Wishlists",activeIcon: Icon(Icons.favorite)),
        BottomNavigationBarItem(icon: Icon(Icons.tips_and_updates_outlined,size: 35,),label: "Trips",),
        BottomNavigationBarItem(icon: Icon(Icons.message,size: 35,),label: "Messages"),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline,size: 35,),label: "Messages",activeIcon: Icon(Icons.person,size: 35,)),


      ],
    );
  }
}
