import 'package:flutter/material.dart';

class CreateLaunchPadDataRow extends StatelessWidget {
  CreateLaunchPadDataRow({
    @required this.launchPadList,
    @required this.kTextStyle,
    this.image,
    this.title,
  });

  final List<String> launchPadList;
  final TextStyle kTextStyle;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ImageIcon(
          AssetImage(
            image,
          ),
          size: 40.0,
          color: Colors.orangeAccent,
        ),
        Text(
          title,
          style: kTextStyle,
        ),
      ],
    );
  }
}
