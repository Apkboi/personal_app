import 'package:flutter/material.dart';

class DemoData {
  final String tittle;
  final String subTittle;
  final IconData head_icon;
  final IconData end_icon;

  DemoData(@required this.tittle, @required this.subTittle,
       this.head_icon,  this.end_icon);

}
