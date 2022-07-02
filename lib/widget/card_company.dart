import 'package:flutter/material.dart';
import 'package:jobify/constant/colors.dart';

class companyCard extends StatelessWidget {
  String title;
  IconData iconData;
  companyCard({this.iconData, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.36,
      // height: MediaQuery.of(context).size.height * .50,
      child: Card(
        shadowColor: Colors.teal,
        borderOnForeground: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    iconData,
                    color: primaryColor,
                    size: 62,
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: primaryColor,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
