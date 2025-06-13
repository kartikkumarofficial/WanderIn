import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final String reviewerName;
  final String reviewText;
  final String timeAgo;
  final String platform;
  final String? profileLetter;
  final double rating;

  const ReviewCard({
    super.key,
    required this.reviewerName,
    required this.reviewText,
    required this.timeAgo,
    required this.platform,
    this.profileLetter,
    this.rating = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          right: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ⭐⭐⭐⭐⭐ + time
          Row(
            children: [
              Row(
                children: List.generate(
                  rating.floor(),
                      (index) => Icon(Icons.star, color: Colors.black, size: 14),
                ),
              ),
              SizedBox(width: 4),
              Text(
                '• $timeAgo',
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
            ],
          ),
          SizedBox(height: 8),

          // Review text (shortened)
          Text(
            reviewText,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.4),
          ),
          SizedBox(height: 6),

          // Show more
          Text(
            "Show more",
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 14),

          // Reviewer info
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black87,
                child: Text(
                  profileLetter ?? reviewerName[0],
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reviewerName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    '$timeAgo on $platform',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
