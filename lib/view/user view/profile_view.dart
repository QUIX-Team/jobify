import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:jobify/constant/colors.dart';
import 'package:jobify/widget/custome_container_proffile.dart';

class ProfileView extends StatelessWidget {
  static const id = 'ProfileView';
  const ProfileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(230.0),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            color: Color(0xFFEEFDFD),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomeViewNav()));
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: SizedBox(
                        height: 60.0,
                        child: Image.asset(
                          'images/logo2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.account_balance_wallet_rounded,
                              color: Colors.black,
                            )),
                        InkWell(
                            onTap: () {},
                            child: Icon(
                              CommunityMaterialIcons.bell_outline,
                              color: Colors.black,
                            )),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Following\n8',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: primaryColor),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg'),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Followers\n12',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: primaryColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Basma Nasr',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Basma.Nasr77@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: primaryColor),
                    ),
                    Text(
                      'Cairo',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: primaryColor),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.19,
                    width: MediaQuery.of(context).size.width * 0.39,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Icon(
                                  CommunityMaterialIcons.account_tie,
                                  color: primaryColor,
                                  size: 62,
                                )),
                            Text(
                              'Go To My Learning\nProfile.',
                              style: TextStyle(color: Colors.black),
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
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    height: MediaQuery.of(context).size.height * 0.19,
                    width: MediaQuery.of(context).size.width * 0.39,
                    child: InkWell(
                      onTap: () {},
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Icon(
                                    CommunityMaterialIcons.account_tie,
                                    color: primaryColor,
                                    size: 62,
                                  )),
                              Text(
                                'Careers which Fit My interest',
                                style: TextStyle(
                                  color: Colors.black,
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
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.010,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.055,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Take an Interest Profile Test'),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: primaryColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CusContainerProfile(
              textTitle: 'Skill',
              chip1: 'Teamwork',
              chip3: 'SELF-CONFIDENCE ',
              chip4: 'EMPATHY',
              chip5: 'COMMUNICATION',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CusContainerProfile(
              textTitle: 'Technical Skills',
              chip1: 'problem solving',
              chip3: 'Dart & Flutter',
              chip4: 'oop',
              chip5: 'design pattern',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CusContainerProfile(
              textTitle: 'Interest',
              chip1: 'watching TV ',
              chip3: 'Music',
              chip4: 'running',
              chip5: 'Reading',
            ),
          ],
        ),
      ),
    );
  }
}
