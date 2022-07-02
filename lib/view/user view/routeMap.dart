// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:jobify/constant/colors.dart';
import 'package:jobify/view/company_view/register.dart';
import 'package:jobify/widget/buttons.dart';

import 'UserAuth/login.dart';
import 'UserAuth/register.dart';

class RouteMap extends StatefulWidget {
  static const id = "RouteMap";

  @override
  State<RouteMap> createState() => _RouteMapState();
}

class _RouteMapState extends State<RouteMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: const Color(0xFFE3FDFC),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0XFF478D8B),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(200))),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned(
            top: 30,
            right: 50,
            child: CircleAvatar(
              radius: 110,
              backgroundColor: circle,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ClipOval(
                    child: Image.asset(
                  'images/logo.png',
                  height: 170,
                )),
              ),
            ),
          ),
          Positioned(
            top: 300,
            right: 60,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: circle,
            ),
          ),
          Positioned(
            top: 290,
            right: 150,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: circle,
            ),
          ),
          Positioned(
            top: 250,
            right: 230,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: circle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * .1,
                left: 10,
                right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    flex: 0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: buttons(
                                  Colors.white, Colors.teal[500], 'Sign Up ',
                                  () {
                                setState(() {
                                  Navigator.pushNamed(context, UserRegister.id);
                                });
                              })),
                          Container(
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: buttons(
                                  Colors.white, Colors.teal[500], 'Sign In ',
                                  () {
                                setState(() {
                                  Navigator.pushNamed(context, Login.id);
                                });
                              }))
                        ])),
                Row(children: [
                  SizedBox(
                      child: Divider(
                          color: Colors.black, indent: 20, endIndent: 10),
                      width: MediaQuery.of(context).size.width * .40,
                      height: 30),
                  Text('OR'),
                  SizedBox(
                    child:
                        Divider(color: Colors.black, indent: 10, endIndent: 10),
                    width: MediaQuery.of(context).size.width * .40,
                    height: 50,
                  )
                ]),
                Center(
                  child: buttons(
                      Colors.white, Colors.teal[500], 'Sign Up as Company', () {
                    setState(() {
                      Navigator.pushNamed(context, CompanyRegister.id);
                    });
                  }),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
