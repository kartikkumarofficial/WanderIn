import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wanderin/presentation/widgets/feature_tile.dart';
import 'package:wanderin/presentation/widgets/host_card.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
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
                  )
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: srcheight*0.31),
              child: Container(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - (srcheight * 0.31),
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
                        style: GoogleFonts.playfair(fontWeight: FontWeight.bold, fontSize: srcwidth * 0.075),
                      ),
                    ),
                    SizedBox(height: srcheight * 0.001),
                    Center(
                      child: Text(
                        'Solang Valley, Himachal Pradesh',
                        style: TextStyle(color: Colors.grey[600], fontSize: srcwidth * 0.035),
                      ),
                    ),
                    SizedBox(height: srcheight * 0.015),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left:4),
                          child: Icon(FontAwesomeIcons.solidStar, color: Colors.black, size: 14),
                        ),
                        Text(
                          " 4.84",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          '•',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),

                        SizedBox(width: 5,),
                        Text(
                          "59 reviews",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                          textAlign: TextAlign.center,
                        ),

                      ],
                    ),
                    SizedBox(height: srcwidth*0.03,),
                    Divider(
                      thickness: 0.5,
                      // color: Colors.grey,
                    ),
                    SizedBox(height: srcwidth*0.03,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.ac_unit),
                          title: Text("Designed to stay cool"),
                          subtitle: Text("Traditional architecture keeps the space naturally ventilated and cool."),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.eco, ),
                          title: Text("Eco-Friendly Living"),
                          subtitle: Text("Built with sustainable materials and surrounded by nature."),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.bedroom_parent, ),
                          title: Text("Scenic Private Rooms"),
                          subtitle: Text("Each room features large windows with stunning mountain views."),
                        ),
                      ],
                    ),

                    SizedBox(height: srcwidth*0.03,),
                    Divider(
                      thickness: 0.5,
                      // color: Colors.grey,
                    ),
                    SizedBox(height: srcwidth*0.03,),

                    Text('About this place',
                        style: TextStyle(fontSize: srcwidth * 0.045, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text(
                        'Escape to a serene Himalayan retreat surrounded by snow-capped peaks and lush forests. Perfect for nature lovers and couples.'),
                    SizedBox(height: srcwidth*0.03,),
                    Divider(
                      thickness: 0.5,
                      // color: Colors.grey,
                    ),
                    SizedBox(height: srcwidth*0.03,),
                    Text('Features',
                        style: TextStyle(fontSize: srcwidth * 0.045, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FeatureTile(icon: Icons.wifi, label: 'Wi-Fi'),
                        FeatureTile(icon: Icons.terrain, label: 'Mountain View'),
                        FeatureTile(icon: Icons.local_parking, label: 'Private Parking'),
                        FeatureTile(icon: Icons.fireplace, label: 'Heating'),
                        FeatureTile(icon: Icons.free_breakfast, label: 'Breakfast Included'),
                        FeatureTile(icon: Icons.pets, label: 'Pet Friendly'),
                      ],
                    ),

                    SizedBox(height: srcwidth*0.03,),
                    Divider(
                      thickness: 0.5,
                      // color: Colors.grey,
                    ),
                    SizedBox(height: srcwidth*0.03,),
                    Container(
                      height: srcheight*0.5,
                      width: srcwidth*0.9,
                      color: Colors.grey,
                    ),
                    SizedBox(height: srcwidth*0.03,),
                    Divider(
                      thickness: 0.5,
                      // color: Colors.grey,
                    ),
                    SizedBox(height: srcwidth*0.03,),
                    Text(' Meet your host',
                        style: TextStyle(fontSize: srcwidth * 0.045, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10,),
                    HostCard(
                      imageUrl: 'https://static.vecteezy.com/system/resources/thumbnails/031/542/476/small_2x/beautiful-asian-girl-in-fashionable-outfit-ai-generative-photo.jpg',
                      hostName: 'Aanya Sharma',
                      rating: 4.9,
                      reviews: 122,
                      monthsHosting: 15,
                      isVerified: true,
                    ),

                    SizedBox(height: srcheight * 0.015),
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.commentDots),
                      label: Text('Connect with Host'),
                    ),
                    SizedBox(height: srcwidth*0.03,),
                    Divider(
                      thickness: 0.5,
                      // color: Colors.grey,
                    ),
                    SizedBox(height: srcwidth*0.03,),
                    Text('Reviews',
                        style: TextStyle(fontSize: srcwidth * 0.045, fontWeight: FontWeight.bold)),
                    ListTile(
                      leading: CircleAvatar(child: Text('K')),
                      title: Text('Kartik Kumar'),
                      subtitle:
                      Text('Great location, very clean and peaceful. Highly recommended!'),
                      trailing: Icon(Icons.star, color: Colors.amber),
                    ),
                    ListTile(
                      leading: CircleAvatar(child: Text('S')),
                      title: Text('Sanyam Kohli'),
                      subtitle: Text(
                          'Host was very friendly and the place is just like in the pictures.'),
                      trailing: Icon(Icons.star, color: Colors.amber),
                    ),
                    SizedBox(height: srcheight * 0.03),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        minimumSize: Size(double.infinity, 50),
                      ),
                      child: Text('Reserve Now', style: TextStyle(fontSize: srcwidth * 0.045)),
                    ),
                    SizedBox(height: srcheight * 0.05),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
