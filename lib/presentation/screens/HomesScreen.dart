import 'package:flutter/material.dart';

import '../widgets/search_box.dart';
class HomesScreen extends StatelessWidget {
  HomesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: srcwidth * 0.04),
        child: Column(
          children: [


            // PlaceCard(),
          ],
        ),
      ),
    );
  }


}
