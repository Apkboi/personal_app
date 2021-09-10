import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  @override
  State<GridScreen> createState() => GridScreenState();
}

class GridScreenState extends State<GridScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 44,
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 18,
                    color: Colors.grey,
                  ),
                  Card(
                    elevation: 10,
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.chat_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'My Body ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: 1),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Basics ',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                  ),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 1.4,
                crossAxisSpacing: 20,
                children: [
                  Card(
                    color: Colors.deepOrange,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: '72',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white)),
                          TextSpan(
                              text: 'kg \n weight',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white))
                        ]))
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.purple,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: '472',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white)),
                          TextSpan(
                              text: 'sm \n height',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white))
                        ]))
                      ],
                    ),
                  ),
                ],
              ),
              Card(
                color: Colors.lightBlue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Boxing, Gyming Runing',
                          style: TextStyle(
                              fontSize: 22,
                              wordSpacing: 2,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        Text(
                          'Experience',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Icon(
                    Icons.watch_outlined,
                    size: 16,
                  ),
                  Text(
                    'Advanced',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
                shrinkWrap: true,
                crossAxisSpacing:15 ,
                children: [
                  Card(
                    color: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: Colors.grey.shade100, width: 0.9)),
                            child: Icon(
                              Icons.wb_sunny_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: '50',
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 22)),
                              TextSpan(
                                  text: 'mins \n Morning workouts',
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 10))
                            ])),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: Colors.grey.shade100, width: 0.9)),
                            child: Icon(
                              Icons.wb_cloudy,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: '5',
                                      style:
                                      TextStyle(color: Colors.white, fontSize: 22)),
                                  TextSpan(
                                      text: 'hrs \n Evening workouts',
                                      style:
                                      TextStyle(color: Colors.white, fontSize: 10))
                                ])),
                          ),
                        ),

                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
