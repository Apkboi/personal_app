import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_app/screens/SignUpScreen.dart';
import 'package:personal_app/widgets/Button.dart';
import 'package:personal_app/widgets/CustomTextField.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void onClicked() {
      print('clicked');
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => SignUpScreen()));
    }

    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Positioned(
          top: -10,
          left: -20,
          child: CircleAvatar(
            // backgroundImage: AssetImage('assets/profile.jpg'),
            radius: 30,
            backgroundColor: Colors.deepOrange,
          ),
        ),
        Center(
          child: Positioned(
            top: 0,
            bottom: 55,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 55,
                    ),
                    Text(
                      'Hey, \nLogin Now',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      textWidthBasis: TextWidthBasis.parent,
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'if you are new / ',
                            style: TextStyle(color: Colors.grey)),
                        TextSpan(
                            text: 'Create New',
                            style: TextStyle(fontSize: 15, color: Colors.black))
                      ]),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomTextField(
                      hint: 'Name',
                      end_icon: Icon(
                        Icons.lightbulb,
                        color: Colors.deepOrange,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      hint: 'Password',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'Forgot Password ? / ',
                          style: TextStyle(color: Colors.grey)),
                      TextSpan(
                          text: 'Reset',
                          style: TextStyle(fontSize: 10, color: Colors.black))
                    ])),
                    SizedBox(
                      height: 10,
                    ),
                    Button(
                      onClicked: onClicked,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
