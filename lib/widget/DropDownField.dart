import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';

class DropDownField extends StatelessWidget {
  DropDownField(
      {@required this.data,
      @required this.showIcon,
      @required this.labelText,
      @required this.width,
      @required this.controller});
  List<String> data;
  bool showIcon;
  DropdownEditingController controller;
  String labelText;
  double width;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(35)),
          ),
          width: width,
          child: TextDropdownFormField(
            controller: controller,
            options: data,
            decoration: InputDecoration(
              floatingLabelStyle: TextStyle(color: Colors.white),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: const BorderSide(color: Colors.white),
              ),
              enabledBorder: const UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color: Colors.white),
              ),
              filled: false,
              focusedBorder: const UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color: Colors.white),
              ),
              suffixIcon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              labelText: labelText,
              labelStyle: TextStyle(color: Colors.white),
            ),
            dropdownHeight: 100,
          ),
        ),
        showIcon
            ? Container(
                height: 35,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Icon(Icons.search, color: Colors.white),
              )
            : SizedBox()
      ],
    );
  }
}
