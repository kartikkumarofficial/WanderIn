import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wanderin/presentation/screens/ExploreScreen.dart';
import 'package:wanderin/presentation/screens/WishlistsScreen.dart';
import 'package:wanderin/presentation/widgets/TripsIntroSheet.dart';
import 'package:wanderin/presentation/widgets/bottomnavbar.dart';


class MainScaffold extends StatefulWidget {
  const  MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    ExploreScreen(),
    WishlistScreen(),
    Center(child: Text("Trips Screen")),
    Center(child: Text("Messages Screen")),
    Center(child: Text("Profile Screen")),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Bottomnavbar(),
    );
  }
}
