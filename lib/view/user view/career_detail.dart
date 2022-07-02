import 'package:flutter/material.dart';
import 'package:jobify/constant/colors.dart';
import 'package:jobify/models/career_model.dart';
import 'package:jobify/widget/buttons.dart';

import 'home_nav/HomeView.dart';

class CareerDetails extends StatefulWidget {
  static const id = 'CareerDetails';
  CareerModel career;
  String index;
  CareerDetails({@required this.career, @required this.index});

  @override
  _CareerDetailsState createState() => _CareerDetailsState();
}

class _CareerDetailsState extends State<CareerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: CircleAvatar(
                      child: Text(widget.index),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 10, 8, 8),
                      child: Text(widget.career.title,
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: circle,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(35, 8, 10, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description:',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 15),
                        Text(
                          widget.career.description,
                          style: TextStyle(
                              color: labelText, fontWeight: FontWeight.w300),
                        ),
                        // SizedBox(height: 15),
                        // Text(
                        //   'On the job,you would:',
                        //   style: TextStyle(
                        //       fontSize: 18, fontWeight: FontWeight.w400),
                        // ),
                        // SizedBox(height: 15),
                        // Text(
                        //   '* Inspect food product and processing procedures to determine whether products are safe to eat\n \n \n *Interpret and enforce government acts and regulations and explain required standards to agricultural workers \n \n \n * Set standard for the production of meat or poultry products or for food ingredients, additives,or compounds used to prepare or package products.',
                        //   style: TextStyle(
                        //       color: labelText, fontWeight: FontWeight.w300),
                        // ),
                        SizedBox(height: 15),
                        Text(
                          'Skills:',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 15),
                        Text(
                            widget.career.skills
                                .replaceAll("'", "")
                                .replaceAll("{", "")
                                .replaceAll("}", ""),
                            style: TextStyle(
                                color: labelText, fontWeight: FontWeight.w300)),
                        SizedBox(height: 15),
                        Text('Abilities:',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
                        SizedBox(height: 15),
                        Text(
                            widget.career.abilities
                                .replaceAll("'", "")
                                .replaceAll("{", "")
                                .replaceAll("}", ""),
                            style: TextStyle(
                                color: labelText, fontWeight: FontWeight.w300))
                      ],
                    ),
                  )),
              SizedBox(height: 15),
              buttons(Colors.white, bottom, 'View Jobs In This field ', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HomeViewNav(currentIndexItem: 1)));
              }),
              SizedBox(height: 10),
              buttons(bottom, circle, 'View Courses In This field ', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HomeViewNav(currentIndexItem: 2)));
              }),
            ],
          ),
        ),
      )),
    );
  }
}
