import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wanderin/presentation/screens/ExploreScreen.dart';
import 'package:wanderin/presentation/screens/HostScreen.dart';

import 'package:wanderin/presentation/screens/WishlistScreen.dart';
import 'package:wanderin/presentation/screens/profile/ProfileScreen.dart';
import 'package:wanderin/presentation/widgets/WishlistIntroSheet.dart';
import 'package:wanderin/presentation/widgets/bottomnavbar.dart';


class MainScaffold extends StatefulWidget {
  const  MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  final List<Widget> _screens = [
    ExploreScreen(),
    WishlistScreen(),
    HostScreen(),
    Center(child: Text("Messages Screen")),
    ProfileScreen()
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Bottomnavbar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

      ),
    );
  }
}
