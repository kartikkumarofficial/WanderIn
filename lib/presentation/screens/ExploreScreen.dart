import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wanderin/presentation/screens/HomesScreen.dart';
import 'package:wanderin/presentation/widgets/bottomnavbar.dart';
import '../widgets/search_box.dart';
import 'AdventuresScreen.dart';
import 'Extras.dart';

class ExploreScreen extends StatefulWidget {
  ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> with SingleTickerProviderStateMixin {
  final TextEditingController searchController = TextEditingController();
  late TabController _tabController;
  late ScrollController _scrollController;
  bool showIcons = true;

  final List<Widget> _tabViews = [
    HomesScreen(),
    AdventuresScreen(),
    ExtrasScreen()
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.offset > 100 && showIcons) {
        setState(() => showIcons = false);
      } else if (_scrollController.offset <= 100 && !showIcons) {
        setState(() => showIcons = true);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final srcheight = MediaQuery.of(context).size.height;
    final srcwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [

          SliverAppBar(
            pinned: false,
            floating: true,
            snap: true,
            expandedHeight: srcheight * 0.06,
            toolbarHeight: 60,
            title: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('WanderIn', style: GoogleFonts.playfair(fontSize: 26)),
            ),
          ),

          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverBoxDelegate(
              child: Padding(
                padding:  EdgeInsets.only(top: showIcons?0 : srcheight*0.06),
                child: SearchBox(srcheight ,srcwidth),
              ),
              height: srcheight * 0.065 + (showIcons ? 0 : srcheight*0.05),
            ),
          ),

          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverBoxDelegate(
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(icon: showIcons ? Icon(Icons.home) : null, text: 'Home'),
                  Tab(icon: showIcons ? Icon(Icons.sports) : null, text: 'Adventures'),
                  Tab(icon: showIcons ? Icon(Icons.room_service) : null, text: 'Extras'),
                ],
              ),
              height: 48,
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: _tabViews,
        ),
      ),
      bottomNavigationBar: Bottomnavbar(),
    );
  }
}





class _SliverBoxDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;

  _SliverBoxDelegate({required this.child, required this.height});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: height,
      color: Colors.white,
      child: child,
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant _SliverBoxDelegate oldDelegate) {
    return oldDelegate.child != child || oldDelegate.height != height;
  }
}
