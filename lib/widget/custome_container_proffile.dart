import 'package:flutter/material.dart';
import 'package:jobify/constant/colors.dart';

class CusContainerProfile extends StatelessWidget {
  CusContainerProfile(
      {@required this.textTitle,
      this.chip1,
      this.chip3,
      this.chip4,
      this.chip5});

  final String textTitle;
  final String chip1;

  final String chip3;
  final String chip4;
  final String chip5;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$textTitle:',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.all_inbox,
                  color: primaryColor,
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.010,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customeChip(text: chip1),
                customeChip(text: chip3),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 39),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                customeChip(text: chip4),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                customeChip(text: chip5),
              ],
            ),
          )
        ],
      ),
    );
  }

  Chip customeChip({String text}) {
    return Chip(
      label: Text(
        text,
        style: TextStyle(color: primaryColor),
      ),
    );
  }
}
