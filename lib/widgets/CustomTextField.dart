import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Icon start_icon;
  final Icon end_icon;
  final Color background_colr;

  // ignore: non_constant_identifier_names
  const CustomTextField(
      {Key key,
      @required this.hint,
      this.start_icon,
      this.end_icon,
      this.background_colr = const Color(-303108370)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration(
          alignLabelWithHint: true,
          hoverColor: Colors.deepOrange,
          focusColor: Colors.grey,
          hintText: hint,
          fillColor: background_colr,
          filled: true,
          prefixIcon: start_icon,
          suffixIcon: end_icon,


          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.6),
            borderSide: BorderSide.none,
          )),
    );
  }
}
