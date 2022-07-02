import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jobify/view/company_view/successCompRe.dart';
import 'package:jobify/view/user%20view/success.dart';
import 'package:jobify/widget/DropDownField.dart';
import 'package:jobify/widget/buttons.dart';
import 'package:jobify/widget/textForm.dart';

class CompanyRegister extends StatefulWidget {
  static const id = 'CompanyRegister';

  @override
  State<CompanyRegister> createState() => _CompanyRegisterState();
}

class _CompanyRegisterState extends State<CompanyRegister> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final companyTypeController = DropdownEditingController<String>();
  final websiteController = TextEditingController();
  final companynameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Container(
          color: const Color(0xFFE3FDFC),
        ),
        Positioned(
          top: 70,
          right: 50,
          child: Image.asset(
            'images/logo.png',
            height: 200,
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
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 70, left: 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 260,
                        child: TextForm(
                          label: 'E-mail',
                          controller: emailController,
                          obs: false,
                          border: Colors.white,
                          colorLabel: Colors.white,
                        ),
                      ),
                      Container(
                        width: 300,
                        child: TextForm(
                          label: 'Company Name',
                          controller: companynameController,
                          obs: false,
                          border: Colors.white,
                          colorLabel: Colors.white,
                        ),
                      ),
                      Container(
                        width: 330,
                        child: TextForm(
                          label: 'Password ',
                          controller: passwordController,
                          obs: true,
                          border: Colors.white,
                          colorLabel: Colors.white,
                        ),
                      ),
                      Container(
                        width: 350,
                        child: TextForm(
                          label: 'Website',
                          controller: websiteController,
                          obs: false,
                          border: Colors.white,
                          colorLabel: Colors.white,
                        ),
                      ),
                      DropDownField(
                        data: ['industry', 'commerce'],
                        showIcon: false,
                        labelText: 'Company type',
                        width: MediaQuery.of(context).size.width * .93,
                        controller: companyTypeController,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: buttons(
                            Colors.white, Colors.teal[300], 'Create account',
                            () {
                          setState(() {
                            Navigator.pushNamed(context, compReSucess.id);
                          });
                        }),
                      )
                    ],
                  ),
                ),
              )),
        ),
      ]),
    );
  }
}
