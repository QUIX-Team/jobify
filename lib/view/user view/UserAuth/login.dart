import 'package:flutter/material.dart';
import 'package:jobify/constant/colors.dart';
import 'package:jobify/controller/auth_controller.dart';
import 'package:jobify/models/user_model.dart';
import 'package:jobify/widget/buttons.dart';
import 'package:jobify/widget/textForm.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  static const id = 'Login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(builder: (context, value, child) {
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
                  TextForm(
                    label: 'E-mail',
                    controller: emailController,
                    obs: false,
                    border: Colors.teal[700],
                    colorLabel: Colors.teal[700],
                  ),
                  TextForm(
                    label: 'Password',
                    controller: passwordController,
                    obs: false,
                    border: Colors.teal[700],
                    colorLabel: Colors.teal[700],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: buttons(Colors.white, Colors.teal[300], 'Sign In',
                        () async {
                      print(UserModel(
                        email: emailController.text,
                        password: passwordController.text,
                      ));
                      await value.login(emailController.text,
                          passwordController.text, context);
                    }),
                  )
                ],
              ),
            )
          ],
        )),
      );
    });
  }
}
