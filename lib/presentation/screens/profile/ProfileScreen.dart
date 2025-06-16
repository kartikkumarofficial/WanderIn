import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wanderin/presentation/widgets/option_card.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final srcwidth = MediaQuery.of(context).size.width;
    final srcheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      top: srcheight * 0.05,
                      bottom: srcheight * 0.015,
                    ),
                    alignment: Alignment.center,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: srcwidth * 0.35,
                          height: srcwidth * 0.35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white60,
                              width: srcwidth * 0.018,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                spreadRadius: 0.1,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            radius: srcwidth * 0.15,
                            backgroundImage: NetworkImage(
                              'https://i.pravatar.cc/300',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: srcheight * 0.015,
                    right: srcwidth * 0.05,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: IconButton(
                        onPressed: (){
                          Navigator.of(context).pushNamed('/fourth');
                        },
                        icon:Icon(Icons.notifications_none),
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: srcheight * 0.004),
              Text(
                "Kartik Kumar",
                style: GoogleFonts.poppins(
                  fontSize: srcwidth * 0.07,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: srcheight * 0.005),
              Text(
                "Adventurer • 12 Trips",
                style: GoogleFonts.inter(
                  fontSize: srcwidth * 0.035,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: srcheight * 0.025),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: srcwidth * 0.04),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Past Trips",
                    style: GoogleFonts.poppins(
                      fontSize: srcwidth * 0.045,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: srcheight * 0.015),
              SizedBox(
                height: srcheight * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: srcwidth * 0.04),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: srcwidth * 0.03),
                      width: srcwidth * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(srcwidth * 0.04),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 6,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(srcwidth * 0.04),
                            ),
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/d2/48/25/puputan-square.jpg?w=900&h=500&s=1',
                              height: srcheight * 0.1,
                              width: srcwidth * 0.3,
                              fit: BoxFit.cover,
                              placeholder:
                                  (context, url) => Container(
                                    height: srcheight * 0.1,
                                    color: Colors.grey[300],
                                  ),
                              errorWidget:
                                  (context, url, error) => Icon(Icons.error),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(srcwidth * 0.02),
                            child: Text(
                              "Trip #${index + 1}",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: srcheight * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: srcwidth * 0.04),
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.person_add_alt_1, color: Colors.deepOrange),
                  label: Text(
                    "Find Travel Buddy",
                    style: GoogleFonts.inter(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.deepOrange),
                    minimumSize: Size(srcwidth, srcheight * 0.06),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(srcwidth * 0.03),
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: srcheight * 0.02),
              Divider(thickness: 0.5),
              SizedBox(height: srcheight * 0.02),
              OptionCard(Icons.home_outlined, "Become a Host", srcwidth),
              OptionCard(Icons.group_add_outlined, "Invite Friends", srcwidth),
              OptionCard(Icons.settings_outlined, "App Settings", srcwidth),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: srcwidth * 0.04),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: srcheight * 0.015),
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(srcwidth * 0.03),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.logout, color: Colors.red),
                    title: Text(
                      "Log Out",
                      style: GoogleFonts.inter(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
