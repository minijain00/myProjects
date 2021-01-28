import 'package:flutter/material.dart';

const kTextStyleHeading =
    TextStyle(fontSize: 20.0, height: 2.0, fontWeight: FontWeight.bold);

const kTextStyle = TextStyle(
  fontSize: 20.0,
  height: 2.0,
);

List<String> courseList = [
  '10 classes (90 minutes)',
  'Professional Certificate',
  'Course Workbook'
];

List<String> launchPadList = [
  '10 classes (90 minutes)',
  'Professional Certificate',
  'Course Workbook',
  'Submit Assignments',
  'Get Jury Review',
  'Selected Applicants Get Launched'
];

List<String> faqCardTitles = [
  'Who is this course for?',
  'Is the course theoretical?',
  'Is the course theoretical?',
  'For how long will the course be accessible?',
  'Can I watch this course offline?'
];

List<Map<String, String>> studentReviewList = [
  {
    'image': 'images/student_1.jpg',
    'name': 'Shivraj Singh Dhakkad',
    'date': '02/11/2020',
    'review':
        'Really liked everything about it, even the exercises are quite helpful and informative'
  },
  {
    'image': 'images/student_2.jpg',
    'name': 'Harshita Negi',
    'date': '02/11/2020',
    'review':
        'Whiz League teaches us how to live-with passion,grit,and with a process that makes our life journeys something to savor instead.'
  }
];

List<Map<String, dynamic>> lessonDataList = [
  {
    'image': 'images/lessonimg_1.jpg',
    'title': '1. INTRODUCTION',
    'subtitle': 'Watch Class Preview',
    'details': [
      '- How I started as a restauranteur at the age of 19',
      '- What motivated me or inspired me to get into restaurants'
    ]
  },
  {
    'image': 'images/lessonimg_2.jpg',
    'title': '2. LOCATION, LOCATIONS & LOCATIONS',
    'subtitle': 'Watch Class Preview',
    'details': [
      '- Factors to consider while choosing a location for your restaurant',
      '- Absolute must Dos & Donts while structuring lease agreements'
    ]
  },
  {
    'image': 'images/lessonimg_3.jpg',
    'title': '3. THE CORE CONCEPT OF YOUR RESTAURANT',
    'subtitle': 'Watch Class Preview',
    'details': [
      '- Understanding the market needs and identifying your restaurant\'s core offering',
      '- Identifying the restaurants largest audience and price point',
    ]
  },
  {
    'image': 'images/lessonimg_4.jpg',
    'title': '4. OPTIMISING SPACE & LAYOUT',
    'subtitle': 'Watch Class Preview',
    'details': [
      '- Identifying a layout that allows to offer the best experience to your target audience',
      '- How to minimize wastage of expensive space',
      '- How the layout/arrangement culuturally varies from each city/country'
    ]
  },
  {
    'image': 'images/lessonimg_5.jpg',
    'title': '5. MENU DESIGN & ENGINEERING & KITCHEN',
    'subtitle': 'Watch Class Preview',
    'details': [
      'Customers spend less than 2 min looking at the menu. The menu is the ultimate guide/bridge between your restaurant and the customer.',
      '- Ultimate Dos & Donts while designing a menu',
      '- Food & Drink Mix/ Ratio/ Matrix'
          '- Sourcing of Food Ingredients'
    ]
  },
  {
    'image': 'images/lessonimg_6.jpg',
    'title': '6. BAR & DRINKS',
    'subtitle': 'Watch Class Preview',
    'details': [
      '- Setting up the Bar and its vibe, while planning the bar what all points do you have in mind?',
      '- Planning the Bar Menu',
    ]
  },
];
