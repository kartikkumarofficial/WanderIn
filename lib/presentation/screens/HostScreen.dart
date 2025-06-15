import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HostScreen extends StatefulWidget {
  const HostScreen({super.key});

  @override
  State<HostScreen> createState() => _HostScreenState();
}

class _HostScreenState extends State<HostScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final srcheight = MediaQuery.of(context).size.height;
    final srcwidth = MediaQuery.of(context).size.width;

    //mock data
    final listings = [
      {
        'title': 'Cozy Hilltop Cabin',
        'location': 'Manali, Himachal Pradesh',
        'price': '₹2,500/night',
        'imageUrl':
        'https://a0.muscache.com/im/pictures/miso/Hosting-54005941/original/3bb93170-d253-4543-85a2-ecbcedeb0c67.jpeg?im_w=720',
      },
      {
        'title': 'Modern Beachside Villa',
        'location': 'Baga Beach, Goa',
        'price': '₹6,200/night',
        'imageUrl':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBC0zDymOQ9MoStt0vfHrKKD82pAH8HxNOiA&s',
      },
      {
        'title': 'Luxury Forest Retreat',
        'location': 'Ooty, Tamil Nadu',
        'price': '₹3,900/night',
        'imageUrl':
        'https://a0.muscache.com/im/pictures/miso/Hosting-54005941/original/3bb93170-d253-4543-85a2-ecbcedeb0c67.jpeg?im_w=720',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: srcwidth * 0.05),
          child: ListView.builder(
            controller: _scrollController,
            itemCount: listings.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {

                return Padding(
                  padding: const EdgeInsets.only(top: 24.0, bottom: 20),
                  child: Text(
                    "Your Listings",
                    style: GoogleFonts.dancingScript(
                      fontSize: srcwidth * 0.10,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                );
              }
              final item = listings[index - 1];
              return Card(
                margin: const EdgeInsets.only(bottom: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 5,
                shadowColor: Colors.black26,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    ClipRRect(
                      borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(16)),
                      child: CachedNetworkImage(
                        imageUrl: item['imageUrl']!,
                        height: srcheight * 0.25,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Container(
                          height: 200,
                          color: Colors.grey[300],
                        ),
                        errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title']!,
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              const Icon(Icons.location_on,
                                  size: 16, color: Colors.redAccent),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  item['location']!,
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            item['price']!,
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.green[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
