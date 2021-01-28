import 'package:flutter/material.dart';

class StudentReviewCard extends StatelessWidget {
  StudentReviewCard({this.name, this.date, this.review, this.image});
  final String name;
  final String date;
  final String review;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Card(
        elevation: 15.0,
        shadowColor: Colors.grey[100],
        borderOnForeground: false,
//              decoration: BoxDecoration(color: Color(0xFF121212)),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color(0xFF121212),
          ),
          child: Column(
            children: [
              ListTile(
                leading: Image(
                  image: AssetImage(image),
//                  size: 50,
//                      width: 50,
                ),
                title: Text(
                  name,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(date),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 20.0, left: 10, right: 10),
                child: Text(
                  review,
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
