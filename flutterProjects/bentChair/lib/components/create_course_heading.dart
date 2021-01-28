import 'package:flutter/material.dart';

class CreateCourseHeading extends StatelessWidget {
  CreateCourseHeading({this.title, this.newPrice, this.oldPrice});
  final String title;
  final String newPrice;
  final String oldPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 28.0,
              color: Colors.orangeAccent,
              fontWeight: FontWeight.w900),
        ),
//                  SizedBox(
//                    width: 30.0,
//                  ),
        Row(
          children: [
            Text(
              newPrice,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 15.0),
            Text(
              oldPrice,
              style: TextStyle(
                  fontSize: 20.0, decoration: TextDecoration.lineThrough),
            )
          ],
        ),
      ],
    );
  }
}
