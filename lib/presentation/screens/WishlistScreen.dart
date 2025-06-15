import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wanderin/presentation/widgets/WishlistIntroSheet.dart';


class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final srcheight = MediaQuery.of(context).size.height;
    final srcwidth =  MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(right: 35,top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Edit",style: TextStyle(fontSize: 16),),
                // ElevatedButton(onPressed: (){
                //   showWishlistIntroSheet(context);
                // },child: Text("hi"),)
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left:srcwidth*0.05),
                  child: Text("Wishlists",style: GoogleFonts.sansitaSwashed(fontSize: srcwidth*0.1),),
                ),
              ],
            ),





          ],
        ),
      ),

    );
  }
}
