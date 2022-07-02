import 'package:flutter/material.dart';
import 'package:jobify/constant/colors.dart';
import 'package:jobify/widget/buttons.dart';

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'CoursesNames.dart';

class courseDetail extends StatefulWidget {
  static const id = 'courseDetail';

  @override
  State<courseDetail> createState() => _courseDetailState();
}

class _courseDetailState extends State<courseDetail> {
  double _ratingValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.ukraineitnow.com/wp-content/uploads/2019/10/flutter_banner.jpg'),
                          fit: BoxFit.fill)),
                  height: MediaQuery.of(context).size.height * .5,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .05),
                  child: Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pushReplacementNamed(
                                context, CoursesNames.id);
                          });
                        },
                        icon: Icon(Icons.arrow_back_ios_new),
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {});
                        },
                        icon: Icon(Icons.bookmark),
                        iconSize: 30,
                      ),
                    ],
                  )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 8, 10, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' Flutter',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  RatingBar(
                      initialRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      ratingWidget: RatingWidget(
                          full: const Icon(Icons.star, color: bottom),
                          half: const Icon(
                            Icons.star_half,
                            color: bottom,
                          ),
                          empty: const Icon(
                            Icons.star_outline,
                            color: bottom,
                          )),
                      onRatingUpdate: (value) {
                        setState(() {
                          _ratingValue = value;
                        });
                      }),
                  Text(
                    'Description:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.',
                    style: TextStyle(
                        color: labelText, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Requirment',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '* Inspect food product and processing procedures to determine whether products are safe to eat\n \n \n *Interpret and enforce government acts and regulations and explain required standards to agricultural workers \n \n \n * Set standard for the production of meat or poultry products or for food ingredients, additives,or compounds used to prepare or package products.',
                    style: TextStyle(
                        color: labelText, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'What will you learn:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  buttons(circle, bottom, 'Preview', () {})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
