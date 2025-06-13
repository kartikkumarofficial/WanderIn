import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureTile extends StatelessWidget {
  final IconData icon;
  final String title;


  const FeatureTile({
    super.key,
    required this.icon,
    required this.title,

  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: Colors.teal, size: 26),
      title: Text(
        title,
        style: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      // subtitle: Text(
      //   subtitle,
      //   style: GoogleFonts.inter(
      //     fontSize: 13.5,
      //     color: Colors.grey[700],
      //   ),
      // ),
    );
  }
}
