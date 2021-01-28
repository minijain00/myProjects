import 'package:flutter/material.dart';

class FaqCard extends StatelessWidget {
  FaqCard({this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
        child: ListTile(
          title: Text(title, style: TextStyle(fontSize: 20.0)),
          trailing: Icon(Icons.add, size: 50.0),
        ),
      ),
    );
  }
}
