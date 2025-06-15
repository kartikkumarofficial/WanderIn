import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wanderin/presentation/widgets/feature_tile.dart';
import 'package:wanderin/presentation/widgets/host_card.dart';
import 'package:wanderin/presentation/widgets/review_card.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  PageController _pageController = PageController();
  PageController _page2Controller = PageController();

  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                SizedBox(
                  height: srcheight * 0.35,
                  width: double.infinity,
                  child: PageView(
                    controller: _pageController,
                    children: [
                      Image.network(
                        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/d2/48/25/puputan-square.jpg?w=900&h=500&s=1",
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/d2/48/25/puputan-square.jpg?w=900&h=500&s=1",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),

                Positioned(
                  top: MediaQuery.of(context).padding.top + 8,
                  left: 16,
                  right: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: Icon(CupertinoIcons.arrow_left, size: 20),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: Icon(Icons.share_outlined, size: 20),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(width: 10),

                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: Icon(Icons.favorite_outline, size: 20),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: srcheight * 0.31),
                  child: Container(
                    constraints: BoxConstraints(
                      minHeight:
                          MediaQuery.of(context).size.height -
                          (srcheight * 0.31),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: srcwidth * 0.05),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: srcheight * 0.015),
                        Center(
                          child: Text(
                            'Mountain View Cabin',
                            style: GoogleFonts.playfair(
                              fontWeight: FontWeight.bold,
                              fontSize: srcwidth * 0.075,
                            ),
                          ),
                        ),
                        SizedBox(height: srcheight * 0.001),
                        Center(
                          child: Text(
                            'Solang Valley, Himachal Pradesh',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: srcwidth * 0.035,
                            ),
                          ),
                        ),
                        SizedBox(height: srcheight * 0.015),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Icon(
                                FontAwesomeIcons.solidStar,
                                color: Colors.black,
                                size: 14,
                              ),
                            ),
                            Text(
                              " 4.84",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(width: 5),
                            Text(
                              '•',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),

                            SizedBox(width: 5),
                            Text(
                              "59 reviews",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(height: srcwidth * 0.03),
                        Divider(
                          thickness: 0.5,
                          // color: Colors.grey,
                        ),
                        SizedBox(height: srcwidth * 0.03),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Icon(Icons.ac_unit),
                              title: Text("Designed to stay cool"),
                              subtitle: Text(
                                "Traditional architecture keeps the space naturally ventilated and cool.",
                              ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Icon(Icons.eco),
                              title: Text("Eco-Friendly Living"),
                              subtitle: Text(
                                "Built with sustainable materials and surrounded by nature.",
                              ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Icon(Icons.bedroom_parent),
                              title: Text("Scenic Private Rooms"),
                              subtitle: Text(
                                "Each room features large windows with stunning mountain views.",
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: srcwidth * 0.03),
                        Divider(
                          thickness: 0.5,
                          // color: Colors.grey,
                        ),
                        SizedBox(height: srcwidth * 0.03),

                        Text(
                          'About this place',
                          style: GoogleFonts.sourceSerif4(
                            fontSize: srcwidth * 0.046,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Escape to a serene Himalayan retreat surrounded by snow-capped peaks and lush forests. Perfect for nature lovers and couples.',
                        ),
                        SizedBox(height: srcwidth * 0.03),
                        Divider(
                          thickness: 0.5,
                          // color: Colors.grey,
                        ),
                        SizedBox(height: srcwidth * 0.03),
                        Text(
                          'Features',
                          style: GoogleFonts.sourceSerif4(
                            fontSize: srcwidth * 0.046,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8),
                        Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Icon(Icons.wifi),
                              title: Text("Wi-Fi"),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Icon(Icons.desktop_windows),
                              title: Text("Dedicated Workspace"),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Icon(Icons.tv),
                              title: Text("TV"),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Icon(Icons.local_laundry_service),
                              title: Text("Washer"),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Icon(Icons.smoke_free),
                              title: Text("Smoke Alarm"),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Icon(Icons.local_car_wash),
                              title: Text("Car Wash"),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: srcwidth*0.035),
                          child: SizedBox(

                            width: srcwidth * 0.81,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Colors.white60.withOpacity(0.8),
                                elevation: 1,

                              ),
                              onPressed: () {},
                              child: Text("Show all 59 reviews",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),

                        SizedBox(height: srcwidth * 0.03),
                        Divider(
                          thickness: 0.5,
                          // color: Colors.grey,
                        ),
                        SizedBox(height: srcwidth * 0.03),
                        Text(
                          'Location',
                          style: GoogleFonts.sourceSerif4(
                            fontSize: srcwidth * 0.046,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 20),

                        //todo iplement map
                        Container(
                          height: srcheight * 0.5,
                          width: srcwidth * 0.9,
                          color: Colors.grey.withOpacity(0.4),
                          child: Center(child: Text("Map coming soon")),
                        ),
                        SizedBox(height: srcwidth * 0.03),
                        Divider(
                          thickness: 0.5,
                          // color: Colors.grey,
                        ),
                        SizedBox(height: srcwidth * 0.03),
                        Text(
                          ' Meet your host',
                          style: GoogleFonts.sourceSerif4(
                            fontSize: srcwidth * 0.045,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        HostCard(
                          imageUrl:
                              'https://static.vecteezy.com/system/resources/thumbnails/031/542/476/small_2x/beautiful-asian-girl-in-fashionable-outfit-ai-generative-photo.jpg',
                          hostName: 'Aanya Sharma',
                          rating: 4.9,
                          reviews: 122,
                          monthsHosting: 15,
                          isVerified: true,
                        ),

                        SizedBox(height: srcheight * 0.015),

                        SizedBox(height: srcwidth * 0.0015),
                        Divider(
                          thickness: 0.5,
                          // color: Colors.grey,
                        ),
                        SizedBox(height: srcwidth * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Icon(
                                Icons.star,
                                color: Colors.black,
                                size: srcwidth * 0.05,
                              ),
                            ),
                            Text(
                              "4.84",
                              style: GoogleFonts.sourceSerif4(
                                fontSize: srcwidth * 0.05,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(width: 5),
                            Text(
                              ' • ',
                              style: GoogleFonts.sourceSerif4(
                                fontSize: srcwidth * 0.05,
                                color: Colors.black,
                              ),
                            ),

                            SizedBox(width: 5),
                            Text(
                              "59 reviews",
                              style: GoogleFonts.poppins(
                                fontSize: srcwidth * 0.05,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: srcheight * 0.24,

                          child: PageView(
                            controller: _page2Controller,
                            children: [
                              ReviewCard(
                                reviewerName: "Abhishek",
                                reviewText:
                                    "Staff and workers were helpful and kind. Images on website perfectly matches in real. Nice space, clean bathroom, good lighting. Hope...",
                                timeAgo: "1 month ago",
                                platform: "Airbnb",
                              ),
                              ReviewCard(
                                reviewerName: "Abhishek",
                                reviewText:
                                    "Staff and workers were helpful and kind. Images on website perfectly matches in real. Nice space, clean bathroom, good lighting. Hope...",
                                timeAgo: "1 month ago",
                                platform: "Airbnb",
                              ),
                              ReviewCard(
                                reviewerName: "Abhishek",
                                reviewText:
                                    "Staff and workers were helpful and kind. Images on website perfectly matches in real. Nice space, clean bathroom, good lighting. Hope...",
                                timeAgo: "1 month ago",
                                platform: "Airbnb",
                              ),
                              ReviewCard(
                                reviewerName: "Abhishek",
                                reviewText:
                                    "Staff and workers were helpful and kind. Images on website perfectly matches in real. Nice space, clean bathroom, good lighting. Hope...",
                                timeAgo: "1 month ago",
                                platform: "Airbnb",
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: srcwidth*0.035),
                          child: SizedBox(

                            width: srcwidth * 0.81,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Colors.white60.withOpacity(0.8),
                                elevation: 1,

                              ),
                              onPressed: () {},
                              child: Text("Show all 59 reviews",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),

                        SizedBox(height: srcheight * 0.1),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 16.0,
                    spreadRadius: 0.5,
                    offset: Offset(0, -4),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '₹2,500 / night',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Jun 15 - Jun 17',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                        // SizedBox(height: 5,)
                      ],
                    ),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                      ),
                      child: Text(
                        "Reserve",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: srcwidth * 0.04,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//todo add faqs - availibilitu , small report button at last