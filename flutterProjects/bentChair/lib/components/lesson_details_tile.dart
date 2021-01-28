import 'package:flutter/material.dart';

class LessonDetailsTile extends StatelessWidget {
  LessonDetailsTile({this.image, this.title, this.subtitle, this.details});
  final String image;
  final String title;
  final String subtitle;

  final List<String> details;

  List<Widget> convertDetailsIntoTextWidgets() {
    List<Widget> textWidgets = [];
    for (String keyPoint in this.details) {
      textWidgets.add(
        Text(
          keyPoint,
          style: TextStyle(
            fontSize: 18.0,
            height: 1.4,
          ),
        ),
      );
    }
    return textWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
//
                  child: Image(
                      image: AssetImage(image), height: 80.0, width: 150.0),
                ),
                Flexible(
                  child: Container(
                    height: 100.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.play_arrow,
                              size: 30.0,
                              color: Colors.orangeAccent,
                            ),
                            Text(
                              subtitle,
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: convertDetailsIntoTextWidgets(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
