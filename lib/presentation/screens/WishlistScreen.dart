import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wanderin/presentation/widgets/WishlistIntroSheet.dart';
import 'package:wanderin/presentation/widgets/Service_card.dart'; // Assuming path

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final srcheight = MediaQuery.of(context).size.height;
    final srcwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: srcheight * 0.02, right: srcwidth * 0.05, left: srcwidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Edit",
                  style: TextStyle(fontSize: srcwidth * 0.045),
                ),
              ),
              SizedBox(height: srcheight * 0.015),
              Text(
                "Wishlists",
                style: GoogleFonts.sansitaSwashed(
                  fontSize: srcwidth * 0.1,
                ),
              ),
              SizedBox(height: srcheight * 0.02),


              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.only(top: srcheight * 0.01),
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: srcwidth * 0.04,
                    mainAxisSpacing: srcheight * 0.02,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    return Service_card(
                      srcwidth: srcwidth,
                      isGuestFavourite: index % 2 == 0,
                      isWishlisted: true,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
