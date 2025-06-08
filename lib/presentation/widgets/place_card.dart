
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({super.key});

  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.blue,
      ),
      height: srcheight*0.2,
      width: srcwidth*0.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.all(0.0),
            child: Image.network("https://www.outlooktravelmag.com/media/bali-1-1582544096.profileImage.2x-1536x884.webp"
            ),
          ),
          Text(""),
        ],
      ),

    );
  }
}


