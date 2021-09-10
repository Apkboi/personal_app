import 'package:flutter/material.dart';
class GridItem extends StatelessWidget {
  const GridItem({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 55,
        decoration: BoxDecoration(color: Colors.red),
      ),
    );
  }
}
