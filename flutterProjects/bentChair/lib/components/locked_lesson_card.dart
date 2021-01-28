import 'package:flutter/material.dart';

class LockedLessonCard extends StatelessWidget {
  LockedLessonCard({this.image, this.title});

  final String image;
  final String title;

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
          Stack(
            children: [
              Image(
                image: AssetImage(image),
              ),
              Positioned(
                top: 50,
                left: 110,
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.7),
                  radius: 25.0,
                  child: ImageIcon(
                    AssetImage('images/icons/lock_icon.png'),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0, left: 8.0, top: 12.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 15.0),
              textScaleFactor: 1.2,
            ),
          )
        ],
      ),
    );
  }
}
