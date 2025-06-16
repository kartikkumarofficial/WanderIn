import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      'title': 'Booking Confirmed',
      'subtitle': 'Your booking for Bali Villa is confirmed.',
      'time': '2 mins ago',
    },
    {
      'title': 'New Review',
      'subtitle': 'Someone just reviewed your property.',
      'time': '1 hour ago',
    },
    {
      'title': 'Payment Received',
      'subtitle': '₹4500 has been credited to your account.',
      'time': 'Yesterday',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final srcwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Color(0xFFF9F9F9),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal:srcwidth * 0.02),
        itemCount: notifications.length,
        separatorBuilder: (_, __) => Divider(height: 16),
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return ListTile(
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            leading: CircleAvatar(
              // backgroundColor: Colors.deepOrange.shade50,
              child: Icon(Icons.notifications_none),
            ),
            title: Text(
              notification['title']!,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: Text(
              notification['subtitle']!,
              style: GoogleFonts.inter(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
            trailing: Text(
              notification['time']!,
              style: GoogleFonts.inter(
                fontSize: 12,
                color: Colors.grey[500],
              ),
            ),
          );
        },
      ),
    );
  }
}
