
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wanderin/presentation/screens/HomesScreen.dart';
import '../widgets/place_card.dart';
import '../widgets/search_box.dart';
import 'AdventuresScreen.dart';
import 'Extras.dart';

class ExploreScreen extends StatefulWidget {

  ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> with SingleTickerProviderStateMixin {
  final TextEditingController SearchController = TextEditingController();
  late TabController _tabController;
  int _selectedIndex = 0;

  final List<Widget> _tabViews = [
    HomesScreen(),
    AdventuresScreen(),
    ExtrasScreen()
  ];

  @override
  void initState() {
    super.initState();
    _tabController=TabController(length: 3, vsync:this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;



    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('WanderIn',style: GoogleFonts.goblinOne(fontSize: 30,),textAlign: TextAlign.start,),
            ),
            SearchBox(srcheight)
          ],
        ),
        toolbarHeight: 100,
        bottom: TabBar(
            controller: _tabController,
            labelColor: Colors.black,

            tabs: [
              Tab(icon: Icon(Icons.home),text: 'Home',),
              Tab(icon: Icon(Icons.sports),text: 'Adventures',),
              Tab(icon: Icon(Icons.room_service),text: 'Extras',),
            ]),
      ),
      body: TabBarView(
        children: _tabViews,
        controller: _tabController,),
    );
  }
}
