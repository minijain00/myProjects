import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bentchair_task_flutter/tabBar_view/overview.dart';
import 'package:bentchair_task_flutter/tabBar_view/lessons.dart';
import 'package:bentchair_task_flutter/tabBar_view/LaunchPad.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bent-Chair Task',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image(
                    image: AssetImage('images/banner.jpg'),
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'PRIYANK SUKHIJA',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                          width: 100.0,
                          child: Divider(
                            color: Colors.white,
                            thickness: 2.0,
                          ),
                        ),
                        Text(
                          'How To Create Your Restaurant Empire?',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        )
                      ],
                    ),
//                    bottom: 0,
//                    left: 0,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('images/play_btn.png'),
                  ),
                  Text(
                    ' WATCH TRAILER',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              decoration: BoxDecoration(color: Color(0xFF1A1A1A)),
              child: Column(
                children: [
                  DefaultTabController(
                    initialIndex: 0,
                    length: 3,
                    child: Column(
                      children: [
                        Container(
                          child: TabBar(
                            onTap: (index) {},
                            indicator: ShapeDecoration(
                              shape: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.orangeAccent,
                                    width: 3.0,
                                    style: BorderStyle.solid),
                              ),
                            ),
                            unselectedLabelColor: Colors.white,
                            labelColor: Colors.orangeAccent,
                            indicatorColor: Colors.orangeAccent,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorPadding: EdgeInsets.zero,
                            labelPadding: EdgeInsets.only(bottom: 0.0),
                            labelStyle: TextStyle(
                              fontSize: 18.0,
                            ),
                            tabs: [
                              Tab(
                                child: Text(
                                  'Overview',
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Lessons',
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'LaunchPad',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          height: 3000.0,
                          child: TabBarView(
                            children: [
                              Overview(),
                              Lessons(),
                              LaunchPad(),
                            ],
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
