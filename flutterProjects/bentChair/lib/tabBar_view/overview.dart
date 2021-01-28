import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:bentchair_task_flutter/components/create_course_heading.dart';
import 'package:bentchair_task_flutter/components/create_launchPad_dataRow.dart';
import 'package:bentchair_task_flutter/components/recommended_courses_card.dart';
import 'package:bentchair_task_flutter/components/locked_lesson_card.dart';
import 'package:bentchair_task_flutter/components/registration_step_card.dart';
import 'package:bentchair_task_flutter/constants.dart';
import 'package:bentchair_task_flutter/components/student_review_card.dart';
import 'package:bentchair_task_flutter/components/faq_card.dart';

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
//  List<Icon> launchPadIconList = [];

  List<Widget> _createStudentReviewCard() {
    List<Widget> reviewCardList = [];
    for (Map review in studentReviewList) {
      reviewCardList.add(StudentReviewCard(
        image: review['image'],
        name: review['name'],
        date: review['date'],
        review: review['review'],
      ));
    }
    return reviewCardList;
  }

  List<Widget> _createFaqCard() {
    List<Widget> faqTilesList = [];
    for (String faq in faqCardTitles) {
      faqTilesList.add(FaqCard(
        title: faq,
      ));
    }
    return (faqTilesList);
  }

  List<Widget> _createCourseList() {
    List<Widget> textWidgetList = [];
    for (String course in courseList) {
      textWidgetList.add(Text(course, style: kTextStyle));
    }
    return (textWidgetList);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              '80% of the restaurant start ups fail in their first year of business, learn from the king of restaurants - No other than Priyank Sukhija.',
              style: TextStyle(
                fontSize: 18.0,
                height: 2.0,
              ),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 25.0),
            child: CreateCourseHeading(
              title: 'WHIZ COURSE',
              newPrice: '₹1000',
              oldPrice: '₹1500',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0, top: 15.0),
          child: Container(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _createCourseList(),
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 25.0),
            child: CreateCourseHeading(
              title: 'LAUNCH PAD',
              newPrice: '₹1500',
              oldPrice: '₹2000',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, top: 15.0),
          child: Container(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CreateLaunchPadDataRow(
                  launchPadList: launchPadList,
                  kTextStyle: kTextStyle,
                  image: 'images/icons/class_icon.png',
                  title: launchPadList[0],
                ),
                CreateLaunchPadDataRow(
                  launchPadList: launchPadList,
                  kTextStyle: kTextStyle,
                  image: 'images/icons/certificate_icon.png',
                  title: launchPadList[1],
                ),
                CreateLaunchPadDataRow(
                  launchPadList: launchPadList,
                  kTextStyle: kTextStyle,
                  image: 'images/icons/workbook_icon.png',
                  title: launchPadList[2],
                ),
                CreateLaunchPadDataRow(
                  launchPadList: launchPadList,
                  kTextStyle: kTextStyle,
                  image: 'images/icons/class_icon.png',
                  title: launchPadList[3],
                ),
                CreateLaunchPadDataRow(
                  launchPadList: launchPadList,
                  kTextStyle: kTextStyle,
                  image: 'images/icons/certificate_icon.png',
                  title: launchPadList[4],
                ),
                CreateLaunchPadDataRow(
                  launchPadList: launchPadList,
                  kTextStyle: kTextStyle,
                  image: 'images/icons/workbook_icon.png',
                  title: launchPadList[5],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 60.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'LESSON PLAN',
              style: kTextStyleHeading,
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LockedLessonCard(
                    image: 'images/lessonimg_1.jpg',
                    title: 'INTRODUCTION',
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  LockedLessonCard(
                    image: 'images/lessonimg_2.jpg',
                    title: 'LOCATION & LOCATION',
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  LockedLessonCard(
                    image: 'images/lessonimg_3.jpg',
                    title: 'LESSON 3',
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Container(
          child: Stack(
            children: [
              Image(
                image: AssetImage(
                  'images/wlpad_banner.jpg',
                ),
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                top: 50,
//                left: 20,
                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'GET ACCESS TO',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Container(
//                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'WHIZ LAUNCH PAD',
                        style: TextStyle(
                          fontSize: 48.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'LAUNCH YOUR CAREER NOW',
                          style: TextStyle(color: Colors.black),
                        ),
                        color: Colors.orangeAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'STEPS TO REGISTER',
              style: kTextStyleHeading,
//              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RegistrationStepCard(
                    icon: 'images/icons/register_icon.png',
                    title: 'REGISTER',
                    description:
                        'Register to launch your career with Whiz Launch Pad',
                  ),
                  SizedBox(width: 10),
                  RegistrationStepCard(
                    icon: 'images/icons/register_icon.png',
                    title: 'REGISTER',
                    description:
                        'Register to launch your career with Whiz Launch Pad',
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'RECOMMENDED COURSES',
              style: kTextStyleHeading,
//              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RecommendedCoursesCard(
                    title: 'Learn Culinary Arts',
                    image: 'images/recommended_1.jpg',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RecommendedCoursesCard(
                    title: 'Learn Culinary Arts',
                    image: 'images/recommended_1.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Text(
                'FAQ',
                style: kTextStyleHeading,
              ),
            ),
            Column(children: _createFaqCard()),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Text(
                'STUDENT REVIEWS',
                style: kTextStyleHeading,
              ),
            ),
            Column(
              children: _createStudentReviewCard(),
            )
          ],
        ),
      ],
    );
  }
}
