import 'package:flutter/material.dart';
import 'ExploreScreen.dart';
import '../widgets/search_box.dart';
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

            Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image(
                        height: srcwidth*0.42,
                        width: srcwidth*0.45,
                        image: NetworkImage("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/d2/48/25/puputan-square.jpg?w=900&h=500&s=1"),

                      fit: BoxFit.cover,
                      ),
                    ),
                    
                    Positioned(
                        right: 0
                        ,child: IconButton(
                      icon: Icon(Icons.favorite),
                      iconSize: 26,
                      onPressed: (){},
                      color: Color.fromRGBO(54, 54, 66,0.6),

                    ))
                  ],
                )
              ],
            )
            



            // PlaceCard(),
          ],
        ),
      ),
    );
  }


}
