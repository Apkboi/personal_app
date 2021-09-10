import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final  onClicked;

  const Button({Key key, @required this.onClicked}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
            splashColor: Colors.white,
        onPressed: onClicked,
        color: Colors.deepOrange,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('LOGIN',style: TextStyle(color: Colors.white,letterSpacing: 2),),
        ),
      ),
    );
  }
}
