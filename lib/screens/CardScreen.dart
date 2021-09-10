import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_app/models/DemoData.dart';
import 'package:personal_app/screens/ProfileScreen.dart';
import 'package:personal_app/screens/SignUpScreen.dart';
import 'package:personal_app/widgets/Card.dart';

import 'LoginScreen.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key key}) : super(key: key);

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  List<DemoData> demo_list = [
    DemoData('Winner ', 'ddd', Icons.alarm, Icons.alarm),
    DemoData('Second Runner', 'ddd', Icons.alarm, Icons.alarm),
    DemoData('Third Runner', 'ddd', Icons.alarm, Icons.alarm),
    DemoData('dcdcdc', 'ddd', Icons.alarm, Icons.alarm)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade50,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 44,
              ),
              Text('LeaderBoard'),
              GestureDetector(
                onTap: () {
                  print('ddd');
                },
                child: ListView(

                    shrinkWrap: true,
                    // scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    children: demo_list.map((e) {
                      return CustomCard(
                        tittle: e.tittle,
                        sub_tittle: e.subTittle,
                      );
                    }).toList()),
              ),
              SizedBox(
                height: 6,
              ),
              Text('Loosers'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ProfileScreen()));
                  },
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7)),
                              child: Icon(Icons.developer_mode)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'GO TO CLONES',
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
