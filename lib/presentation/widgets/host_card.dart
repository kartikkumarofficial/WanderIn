import 'package:flutter/material.dart';

class HostCard extends StatelessWidget {
  final String imageUrl;
  final String hostName;
  final double rating;
  final int reviews;
  final int monthsHosting;
  final bool isVerified;

  const HostCard({
    super.key,
    required this.imageUrl,
    required this.hostName,
    required this.rating,
    required this.reviews,
    required this.monthsHosting,
    required this.isVerified,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            // Left side: Host Image
            CircleAvatar(
              backgroundImage: AssetImage(imageUrl),
              radius: 35,
            ),

            SizedBox(width: 16),

            // Right side: Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hostName,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4),

                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 4),
                      Text(
                        '$rating • $reviews reviews',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),

                  SizedBox(height: 4),
                  Text(
                    'Hosting for $monthsHosting months',
                    style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                  ),

                  SizedBox(height: 6),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: isVerified ? Colors.green.shade100 : Colors.red.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          isVerified ? Icons.verified : Icons.error_outline,
                          size: 14,
                          color: isVerified ? Colors.green : Colors.red,
                        ),
                        SizedBox(width: 4),
                        Text(
                          isVerified ? 'Verified Host' : 'Not Verified',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: isVerified ? Colors.green.shade800 : Colors.red.shade800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
