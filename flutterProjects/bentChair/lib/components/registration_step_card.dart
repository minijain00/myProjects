import 'package:flutter/material.dart';

class RegistrationStepCard extends StatelessWidget {
  RegistrationStepCard({this.icon, this.title, this.description});
  final String icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15.0,
      shadowColor: Colors.grey[100],
      borderOnForeground: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.orangeAccent,
      child: Column(
        children: [
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xFF121212),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              ImageIcon(
                AssetImage(icon),
                size: 50,
                color: Colors.orangeAccent,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 18, color: Colors.orangeAccent),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 8.0, bottom: 8.0, right: 8.0),
                child: Text(
                  description,
                  style: TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
              )
            ]),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
