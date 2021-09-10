import 'dart:ui';

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String tittle;
  final String sub_tittle;

  const CustomCard({Key key, @required this.tittle, @required this.sub_tittle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      child: InkWell(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
              // gradient: LinearGradient(
              //     colors: [Colors.black.withAlpha(7), Colors.blue])
              ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/profile'),
                  radius: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          tittle,
                          style: TextStyle(color: Colors.blue, fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          tittle,
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ]),
                ),
                Spacer(),
                ClipOval(
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber,
                    ),
                    child: Image(
                    fit: BoxFit.fitWidth,
                      image: AssetImage('assets/profile.jpg'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      // color: Colors.blue,
    );
  }
}
