

import 'package:flutter/material.dart';
import 'package:personal_app/widgets/Button.dart';
import 'package:personal_app/widgets/ListItem.dart';

import 'GridScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            height: MediaQuery.of(context).size.height,
            child: Column(

              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size: 20,
                      ),
                      Icon(
                        Icons.more_horiz,
                        size: 20,
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.jpg'),
                        radius: 35,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 70,
                            width: 2,
                            child: Container(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 34,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'joined',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal, fontSize: 10),
                              ),
                              Text(
                                '6 mons ago',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 25,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 18),
                  child: Text(
                    'David',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        letterSpacing: 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Clarisseau',
                    style: TextStyle(
                        fontSize: 20, color: Colors.grey, letterSpacing: 3),
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                ListItem(
                  leading_icon: Icons.adjust,
                  leading_bg_color: Colors.red.shade100,
                  tittle: 'Goals',
                  leading_icon_color: Colors.red,
                ),
                SizedBox(
                  height: 15,
                ),
                ListItem(
                  leading_icon: Icons.accessibility,
                  leading_bg_color: Colors.purple.shade100,
                  tittle: 'My body',
                  leading_icon_color: Colors.purple,
                ),
                SizedBox(
                  height: 15,
                ),
                ListItem(
                  leading_icon: Icons.settings,
                  leading_bg_color: Colors.blue.shade100,
                  tittle: 'Settings',
                  leading_icon_color: Colors.blue,
                ),
                SizedBox(
                  height: 55,
                ),
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: FlatButton(
                      padding: EdgeInsets.all(15),
                      color: Colors.grey.shade200,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => GridScreen()));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.developer_mode,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Sign out',
                          ),
                        ],
                      ),
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
