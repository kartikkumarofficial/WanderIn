import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wanderin/presentation/widgets/place_card.dart';
import 'ExploreScreen.dart';
import '../widgets/search_box.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomesScreen extends StatelessWidget {

  HomesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    late bool isFav ;


    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: srcwidth * 0.04),
        child: Column(
          children: [
            // SizedBox(height: showIcons?0:srcheight*0.1,),
            ListTile(
              title: Text("Popular homes in Dehradun" , style: TextStyle(fontWeight: FontWeight.bold,fontSize: srcheight*0.025),),
              trailing:Icon(Icons.arrow_forward_ios) ,
            ),

            Expanded(
              child: ListView(

                scrollDirection: Axis.horizontal,
                children: [
                  Place_Card(srcwidth: srcwidth,isGuestFavourite: true,isWishlisted: false,),
                  SizedBox(width: 10,),
                  Place_Card(srcwidth: srcwidth,isGuestFavourite: false,isWishlisted: true,),
                  SizedBox(width: 10,),
                  Place_Card(srcwidth: srcwidth,isGuestFavourite: true,isWishlisted: false,),
                  SizedBox(width: 10,),

                ],
              ),
            )




            // PlaceCard(),
          ],
        ),
      ),
    );
  }


}


