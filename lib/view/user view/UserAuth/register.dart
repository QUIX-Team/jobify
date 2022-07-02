// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:jobify/controller/auth_controller.dart';
import 'package:jobify/models/user_model.dart';
import 'package:jobify/widget/DropDownField.dart';
import 'package:jobify/widget/buttons.dart';
import 'package:jobify/widget/textForm.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

class UserRegister extends StatefulWidget {
  static const id = 'UserRegister';

  @override
  State<UserRegister> createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  bool status = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final facultyController = DropdownEditingController<String>();
  final FnameController = TextEditingController();
  final cityController = DropdownEditingController<String>();
  final userNameController = TextEditingController();
  final LnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(builder: (context, value, child) {
      return SafeArea(
        child: Scaffold(
          body: Stack(fit: StackFit.expand, children: [
            Container(
              color: const Color(0xFFE3FDFC),
            ),
            Positioned(
              top: 30,
              right: 30,
              child: Image.asset(
                'images/logo.png',
                height: 170,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0XFF478D8B),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(700))),
                  height: MediaQuery.of(context).size.height / 1.3,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            child: TextForm(
                              label: 'First Name',
                              controller: FnameController,
                              obs: false,
                              border: Colors.white,
                              colorLabel: Colors.white,
                            ),
                          ),
                          Container(
                            width: 250,
                            child: TextForm(
                              label: 'Last Name',
                              controller: LnameController,
                              obs: false,
                              border: Colors.white,
                              colorLabel: Colors.white,
                            ),
                          ),
                          Container(
                            width: 300,
                            child: TextForm(
                              label: 'User Name',
                              controller: userNameController,
                              obs: false,
                              border: Colors.white,
                              colorLabel: Colors.white,
                            ),
                          ),
                          Container(
                            width: 330,
                            child: TextForm(
                              label: 'E-mail',
                              controller: emailController,
                              obs: false,
                              border: Colors.white,
                              colorLabel: Colors.white,
                            ),
                          ),
                          Container(
                            width: 350,
                            child: TextForm(
                              label: 'Password ',
                              controller: passwordController,
                              obs: true,
                              border: Colors.white,
                              colorLabel: Colors.white,
                            ),
                          ),
                          DropDownField(
                            data: ['Engineer', 'Doctor'],
                            showIcon: false,
                            labelText: 'Faculty',
                            width: MediaQuery.of(context).size.width * .93,
                            controller: facultyController,
                          ),
                          const SizedBox(height: 15),
                          DropDownField(
                              data: ['Mansoura', 'Giza'],
                              showIcon: false,
                              labelText: 'City',
                              width: MediaQuery.of(context).size.width * .93,
                              controller: cityController),
                          SizedBox(
                            height: 30,
                          ),
                          Expanded(
                              flex: 0,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Student",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                    FlutterSwitch(
                                        height: 20.0,
                                        width: 40.0,
                                        padding: 4.0,
                                        toggleSize: 15.0,
                                        borderRadius: 10.0,
                                        activeColor: Colors.teal,
                                        value: status,
                                        onToggle: (value) {
                                          setState(() {
                                            status = value;
                                          });
                                        })
                                  ])),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: buttons(Colors.white, Colors.teal[300],
                                'Create account', () async {
                              print(UserModel(
                                      username: userNameController.text,
                                      email: emailController.text,
                                      password: passwordController.text,
                                      firstName: FnameController.text,
                                      lastName: LnameController.text,
                                      city: cityController.value,
                                      faculty: facultyController.value,
                                      graduated: status ? false : true)
                                  .toJson());

                              await value.register(
                                  UserModel(
                                      faculty: facultyController.value,
                                      username: userNameController.text,
                                      email: emailController.text,
                                      password: passwordController.text,
                                      firstName: FnameController.text,
                                      lastName: LnameController.text,
                                      city: cityController.value,
                                      graduated: status ? false : true),
                                  context);
                            }),
                          )
                        ],
                      ),
                    ),
                  )),
            ),
          ]),
        ),
      );
    });
  }
}
