import 'package:flutter/material.dart';
import 'package:movie_apps/values/textstyle.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({
    Key? key,
    required this.iconData,
    required this.icons,
    required this.text,
  }) : super(key: key);

  final IconData iconData;
  final String text;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[700],
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(
              iconData,
              color: Colors.red,
            ),
          ),
          Expanded(
              child: Text(
            text,
            style: text15,
          )),
          Icon(
            icons,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
