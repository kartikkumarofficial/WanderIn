import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wanderin/presentation/widgets/service_card.dart';

import '../widgets/search_box.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StaysScreen extends StatelessWidget {

  StaysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    late bool isFav ;


    return Scaffold(

      body: ListView(
        children: [
          Column(
            children: [
              // SizedBox(height: showIcons?0:srcheight*0.1,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: srcwidth * 0.04),
                child: ListTile(

                  title: Text("Popular Stays in Dehradun" , style: TextStyle(fontWeight: FontWeight.bold,fontSize: srcheight*0.023),),
                  trailing:Icon(Icons.arrow_forward_ios) ,
                ),
              ),

              SizedBox(

                height: srcwidth*0.55,
                child: ListView(

                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: srcwidth*0.04,),
                    Service_card(srcwidth: srcwidth,isGuestFavourite: true,isWishlisted: false,),
                    SizedBox(width: 10,),
                    Service_card(srcwidth: srcwidth,isGuestFavourite: false,isWishlisted: true,),
                    SizedBox(width: 10,),
                    Service_card(srcwidth: srcwidth,isGuestFavourite: true,isWishlisted: false,),
                    SizedBox(width: 10,),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: srcwidth * 0.04),
                child: ListTile(

                  title: Text("Popular Stays in Dehradun" , style: TextStyle(fontWeight: FontWeight.bold,fontSize: srcheight*0.023),),
                  trailing:Icon(Icons.arrow_forward_ios) ,
                ),
              ),

              SizedBox(

                height: srcwidth*0.55,
                child: ListView(

                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: srcwidth*0.04,),
                    Service_card(srcwidth: srcwidth,isGuestFavourite: true,isWishlisted: false,),
                    SizedBox(width: 10,),
                    Service_card(srcwidth: srcwidth,isGuestFavourite: false,isWishlisted: true,),
                    SizedBox(width: 10,),
                    Service_card(srcwidth: srcwidth,isGuestFavourite: true,isWishlisted: false,),
                    SizedBox(width: 10,),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: srcwidth * 0.04),
                child: ListTile(

                  title: Text("Popular Stays in Dehradun" , style: TextStyle(fontWeight: FontWeight.bold,fontSize: srcheight*0.023),),
                  trailing:Icon(Icons.arrow_forward_ios) ,
                ),
              ),

              SizedBox(

                height: srcwidth*0.55,
                child: ListView(

                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: srcwidth*0.04,),
                    Service_card(srcwidth: srcwidth,isGuestFavourite: true,isWishlisted: false,),
                    SizedBox(width: 10,),
                    Service_card(srcwidth: srcwidth,isGuestFavourite: false,isWishlisted: true,),
                    SizedBox(width: 10,),
                    Service_card(srcwidth: srcwidth,isGuestFavourite: true,isWishlisted: false,),
                    SizedBox(width: 10,),

                  ],
                ),
              ),






              // PlaceCard(),
            ],
          ),
        ],
      ),
    );
  }


}


