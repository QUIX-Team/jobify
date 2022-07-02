import 'package:flutter/material.dart';
import 'package:jobify/constant/colors.dart';
import 'package:jobify/widget/buttons.dart';

import 'main_home_view.dart';

class compReSucess extends StatefulWidget {
  static const id = 'compReSucess';
  @override
  State<compReSucess> createState() => _compReSucessState();
}

class _compReSucessState extends State<compReSucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .4,
              width: MediaQuery.of(context).size.width,
              child: CircleAvatar(
                radius: 150,
                backgroundColor: circle,
                child: Padding(
                  padding: const EdgeInsets.all(8), // Border radius
                  child: ClipOval(child: Image.asset('images/check.png')),
                ),
              ),
            ),
            const Text(
              'Success!',
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 100,
            ),
            buttons(Colors.white, bottom, 'NEXT !', () {
              setState(() {
                Navigator.pushReplacementNamed(context, CompanyHome.id);
              });
            })
          ],
        ),
      ),
    );
  }
}