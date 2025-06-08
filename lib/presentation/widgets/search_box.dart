import 'package:flutter/material.dart';


Container SearchBox(double srcheight) {
  return Container(
    height: srcheight * 0.055,

    // margin: EdgeInsets.symmetric(horizontal: srcwidth*0.04),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
    ),
    child: TextFormField(
      // controller: SearchController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: "Start your Search",
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,

        ),
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), // Rounded corners
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}