import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  TextForm(
      {@required this.label,
      @required this.controller,
      @required this.obs,
      @required this.border,
      @required this.colorLabel});
  String label;
  TextEditingController controller;
  bool obs;
  Color border;
  Color colorLabel;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: colorLabel),
      obscureText: obs,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: border),
            borderRadius: BorderRadius.circular(15)),
        filled: false,
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: border),
            borderRadius: BorderRadius.circular(15)),
        labelStyle: TextStyle(color: colorLabel),
        labelText: label,
      ),
      controller: controller,
    );
  }
}
