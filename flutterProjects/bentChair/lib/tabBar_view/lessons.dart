import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bentchair_task_flutter/components/lesson_details_tile.dart';
import 'package:bentchair_task_flutter/constants.dart';

class Lessons extends StatefulWidget {
  @override
  _LessonsState createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  List _createLessonDetailsTiles() {
    List<LessonDetailsTile> detailsTiles = [];
    for (dynamic lesson in lessonDataList) {
      detailsTiles.add(LessonDetailsTile(
        image: lesson['image'],
        title: lesson['title'],
        subtitle: lesson['subtitle'],
        details: lesson['details'],
      ));
    }
    return detailsTiles;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _createLessonDetailsTiles(),
    );
  }
}
