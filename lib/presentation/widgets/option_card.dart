import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class OptionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final double srcwidth;

  const OptionCard(this.icon, this.title, this.srcwidth, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: srcwidth * 0.04, vertical: srcwidth * 0.015),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(srcwidth * 0.035),
        ),
        child: ListTile(
          leading: Icon(icon, color: Colors.deepOrange),
          title: Text(
            title,
            style: GoogleFonts.inter(fontWeight: FontWeight.w500),
          ),
          trailing: Icon(Icons.arrow_forward_ios, size: srcwidth * 0.04),
          onTap: () {},
        ),
      ),
    );
  }
}