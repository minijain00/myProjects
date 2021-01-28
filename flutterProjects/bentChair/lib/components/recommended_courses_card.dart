import 'package:flutter/material.dart';

class RecommendedCoursesCard extends StatelessWidget {
  RecommendedCoursesCard({this.title, this.image});
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.grey[800],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.fill,
            width: 320,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0, left: 8.0, top: 12.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 18.0),
              textScaleFactor: 1.2,
            ),
          )
        ],
      ),
    );
  }
}
