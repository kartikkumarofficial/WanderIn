import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class Service_card extends StatefulWidget {
  const Service_card({
    super.key,
    required this.srcwidth,
    required this.isGuestFavourite,
    required this.isWishlisted,
  });

  final double srcwidth;
  final dynamic isGuestFavourite;

  final dynamic isWishlisted;

  @override
  State<Service_card> createState() => _Service_cardState();
}

class _Service_cardState extends State<Service_card> {

  late bool wishlisted;

  @override
  void initState() {

    super.initState();
    wishlisted = widget.isWishlisted;
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      // color: Colors.red,

      width: widget.srcwidth*0.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [


              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image(
                  height: widget.srcwidth*0.42,
                  width: widget.srcwidth*0.45,
                  image: NetworkImage("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/d2/48/25/puputan-square.jpg?w=900&h=500&s=1"),

                  fit: BoxFit.cover,
                ),
              ),
              if (widget.isGuestFavourite)
                Positioned(
                  top: widget.srcwidth*0.03,
                  left: widget.srcwidth*0.04,
                  child: Container(

                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Guest Favourite',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),


              Positioned(
                  right: 0
                  ,child: IconButton(
                enableFeedback: true,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                icon: Icon(Icons.favorite),
                iconSize: 29,
                onPressed: (){

                },
                color: Colors.white,
              )),
              Positioned(
                  right: 0
                  ,child: IconButton(
                enableFeedback: false,
                icon: Icon(Icons.favorite),
                iconSize: 26,
                onPressed: (){
                  setState(() {
                    wishlisted = !wishlisted;
                  });
                },
                color: wishlisted? Colors.red :Color.fromRGBO(54, 54, 66,0.6),
              )),


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Hotel in Greater Noida",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "\$35 for 2 nights",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left:4),
                    child: Icon(FontAwesomeIcons.solidStar, color: Colors.grey, size: 14),
                  ),
                  Text(
                    " 4.84",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          )

        ],
      ),
    );
  }
}