import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {Key key,
      @required this.leading_bg_color,
      @required this.leading_icon_color,
      @required this.tittle,
      @required this.leading_icon})
      : super(key: key);
  final Color leading_bg_color;
  final Color leading_icon_color;
  final String tittle;
  final IconData leading_icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        child: Container(
          // padding: EdgeInsets.all(16),
          height: 40,
          width: 40,
          child: Icon(
            leading_icon,
            color: leading_icon_color,
          ),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: leading_bg_color),
        ),
      ),
      dense: true,
      trailing: Container(
        height: 40,
        width: 40,
        child: Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
            size: 15,

          ),
        ),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(7),
            color: Colors.grey.shade100),
      ),
      title: Text(
        tittle,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
    );
  }
}
