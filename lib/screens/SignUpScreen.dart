import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:personal_app/screens/LoginScreen.dart';
import 'package:personal_app/widgets/Button.dart';
import 'package:personal_app/widgets/CustomTextField.dart';

import 'CardScreen.dart';

class SignUpScreen extends StatefulWidget {
  // const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.alarm),
      ),
      backgroundColor: Colors.white70,
      body: SignUpHome(),
    );
  }
}

class SignUpHome extends StatelessWidget {
  // const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 44,
                      ),
                      TextField(
                        autocorrect: true,
                        style: TextStyle(color: Colors.blue[100]),
                        autofillHints: ['ddkd', 'dsdv'],
                        obscureText: false,
                        obscuringCharacter: '*',
                        keyboardType: TextInputType.emailAddress,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.blue[100],
                            ),
                            hintText: 'Name',
                            hintStyle: TextStyle(color: Colors.blue[100]),
                            fillColor: Colors.blue[300],
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        autocorrect: true,
                        maxLines: 5,
                        style: TextStyle(color: Colors.blue[100]),
                        autofillHints: ['ddkd', 'dsdv'],
                        obscureText: false,
                        obscuringCharacter: '*',
                        keyboardType: TextInputType.emailAddress,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            // prefixIcon: Icon(
                            //   Icons.person,
                            //   color: Colors.blue[100],
                            // ),
                            isDense: false,
                            hintText: 'Name',
                            hintStyle: TextStyle(color: Colors.blue[100]),
                            fillColor: Colors.blue[300],
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 444,
                          child: RaisedButton(
                            onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CardScreen()));},
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Text(
                              'Whatsup',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,

                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Icon(Icons.alarm),
                        color: Colors.deepOrange,
                        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
                      ),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.rectangle),
                        width: MediaQuery.of(context).size.width,
                        child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.white),
                                backgroundColor: Colors.amber),
                            child: Text(
                              ' Outlined',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Elevated Button ',
                            style: TextStyle(color: Colors.white),

                          ),
                        style: ElevatedButton.styleFrom(),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -55,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  foregroundColor: Colors.blueGrey,
                  backgroundColor: Colors.white,
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/profile.jpg',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
