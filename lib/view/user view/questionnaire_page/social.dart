import 'package:flutter/material.dart';
import 'package:jobify/constant/colors.dart';
import 'package:jobify/constant/value_questionnaire.dart';
import 'package:jobify/models/models_questionnaire/social_model.dart';
import 'package:jobify/widget/appbar_quest.dart';
import 'package:jobify/widget/questionnaire_cart.dart';

import 'enterprising.dart';

class Social extends StatefulWidget {
  const Social({Key key}) : super(key: key);

  @override
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {
  List _socialList = [
    "1.Teach an individual an exercise routine",
    "2.Help people with personal or emotional problems",
    "3.Give career guidance to people",
    "4.Perform rehabilitation therapy",
    "5.Do volunteer work at a non-profit organization",
    "6.Teach children how to play sports",
    "7.Teach sign language to people who are deaf or hard of hearing",
    "8.Help conduct a group therapy session",
    "9.Take care of children at a day-care center",
    "10.Teach a high-school class",
  ];

  int totalsocial = 0;
  int totalsocial1 = 0;
  int totalsocial2 = 0;
  int totalsocial3 = 0;
  int totalsocial4 = 0;
  int totalsocial5 = 0;
  int totalsocial6 = 0;
  int totalsocial7 = 0;
  int totalsocial8 = 0;
  int totalsocial9 = 0;

  Color face1_1 = Colors.grey.shade400;
  Color face1_2 = Colors.grey.shade400;
  Color face1_3 = Colors.grey.shade400;
  Color face1_4 = Colors.grey.shade400;
  Color face1_5 = Colors.grey.shade400;

  ////////////////////////////////////
  Color face2_1 = Colors.grey.shade400;
  Color face2_2 = Colors.grey.shade400;
  Color face2_3 = Colors.grey.shade400;
  Color face2_4 = Colors.grey.shade400;
  Color face2_5 = Colors.grey.shade400;

  ////////////////////////////////////
  Color face3_1 = Colors.grey.shade400;
  Color face3_2 = Colors.grey.shade400;
  Color face3_3 = Colors.grey.shade400;
  Color face3_4 = Colors.grey.shade400;
  Color face3_5 = Colors.grey.shade400;

  ///////////////////////////////////////
  Color face4_1 = Colors.grey.shade400;
  Color face4_2 = Colors.grey.shade400;
  Color face4_3 = Colors.grey.shade400;
  Color face4_4 = Colors.grey.shade400;
  Color face4_5 = Colors.grey.shade400;

  ///////////////////////////////////////
  Color face5_1 = Colors.grey.shade400;
  Color face5_2 = Colors.grey.shade400;
  Color face5_3 = Colors.grey.shade400;
  Color face5_4 = Colors.grey.shade400;
  Color face5_5 = Colors.grey.shade400;

  ///////////////////////////////////////
  Color face6_1 = Colors.grey.shade400;
  Color face6_2 = Colors.grey.shade400;
  Color face6_3 = Colors.grey.shade400;
  Color face6_4 = Colors.grey.shade400;
  Color face6_5 = Colors.grey.shade400;

  ///////////////////////////////////////
  Color face7_1 = Colors.grey.shade400;
  Color face7_2 = Colors.grey.shade400;
  Color face7_3 = Colors.grey.shade400;
  Color face7_4 = Colors.grey.shade400;
  Color face7_5 = Colors.grey.shade400;

  ///////////////////////////////////////
  Color face8_1 = Colors.grey.shade400;
  Color face8_2 = Colors.grey.shade400;
  Color face8_3 = Colors.grey.shade400;
  Color face8_4 = Colors.grey.shade400;
  Color face8_5 = Colors.grey.shade400;

  ///////////////////////////////////////
  Color face9_1 = Colors.grey.shade400;
  Color face9_2 = Colors.grey.shade400;
  Color face9_3 = Colors.grey.shade400;
  Color face9_4 = Colors.grey.shade400;
  Color face9_5 = Colors.grey.shade400;

  ///////////////////////////////////////
  Color face10_1 = Colors.grey.shade400;
  Color face10_2 = Colors.grey.shade400;
  Color face10_3 = Colors.grey.shade400;
  Color face10_4 = Colors.grey.shade400;
  Color face10_5 = Colors.grey.shade400;

  ///////////////////////////////////////

  void changColors1(i) {
    if (i == 1) {
      face1_1 = primaryColor;
      face1_2 = Colors.grey.shade400;
      face1_3 = Colors.grey.shade400;
      face1_4 = Colors.grey.shade400;
      face1_5 = Colors.grey.shade400;
    } else if (i == 2) {
      face1_1 = Colors.grey.shade400;
      face1_2 = primaryColor;
      face1_3 = Colors.grey.shade400;
      face1_4 = Colors.grey.shade400;
      face1_5 = Colors.grey.shade400;
    } else if (i == 3) {
      face1_1 = Colors.grey.shade400;
      face1_2 = Colors.grey.shade400;
      face1_3 = primaryColor;
      face1_4 = Colors.grey.shade400;
      face1_5 = Colors.grey.shade400;
    } else if (i == 4) {
      face1_1 = Colors.grey.shade400;
      face1_2 = Colors.grey.shade400;
      face1_3 = Colors.grey.shade400;
      face1_4 = primaryColor;
      face1_5 = Colors.grey.shade400;
    } else {
      face1_1 = Colors.grey.shade400;
      face1_2 = Colors.grey.shade400;
      face1_3 = Colors.grey.shade400;
      face1_4 = Colors.grey.shade400;
      face1_5 = primaryColor;
    }
  }

  void changColors2(i) {
    if (i == 1) {
      face2_1 = primaryColor;
      face2_2 = Colors.grey.shade400;
      face2_3 = Colors.grey.shade400;
      face2_4 = Colors.grey.shade400;
      face2_5 = Colors.grey.shade400;
    } else if (i == 2) {
      face2_1 = Colors.grey.shade400;
      face2_2 = primaryColor;
      face2_3 = Colors.grey.shade400;
      face2_4 = Colors.grey.shade400;
      face2_5 = Colors.grey.shade400;
    } else if (i == 3) {
      face2_1 = Colors.grey.shade400;
      face2_2 = Colors.grey.shade400;
      face2_3 = primaryColor;
      face2_4 = Colors.grey.shade400;
      face2_5 = Colors.grey.shade400;
    } else if (i == 4) {
      face2_1 = Colors.grey.shade400;
      face2_2 = Colors.grey.shade400;
      face2_3 = Colors.grey.shade400;
      face2_4 = primaryColor;
      face2_5 = Colors.grey.shade400;
    } else {
      face2_1 = Colors.grey.shade400;
      face2_2 = Colors.grey.shade400;
      face2_3 = Colors.grey.shade400;
      face2_4 = Colors.grey.shade400;
      face2_5 = primaryColor;
    }
  }

  void changColors3(i) {
    if (i == 1) {
      face3_1 = primaryColor;
      face3_2 = Colors.grey.shade400;
      face3_3 = Colors.grey.shade400;
      face3_4 = Colors.grey.shade400;
      face3_5 = Colors.grey.shade400;
    } else if (i == 2) {
      face3_1 = Colors.grey.shade400;
      face3_2 = primaryColor;
      face3_3 = Colors.grey.shade400;
      face3_4 = Colors.grey.shade400;
      face3_5 = Colors.grey.shade400;
    } else if (i == 3) {
      face3_1 = Colors.grey.shade400;
      face3_2 = Colors.grey.shade400;
      face3_3 = primaryColor;
      face3_4 = Colors.grey.shade400;
      face3_5 = Colors.grey.shade400;
    } else if (i == 4) {
      face3_1 = Colors.grey.shade400;
      face3_2 = Colors.grey.shade400;
      face3_3 = Colors.grey.shade400;
      face3_4 = primaryColor;
      face3_5 = Colors.grey.shade400;
    } else {
      face3_1 = Colors.grey.shade400;
      face3_2 = Colors.grey.shade400;
      face3_3 = Colors.grey.shade400;
      face3_4 = Colors.grey.shade400;
      face3_5 = primaryColor;
    }
  }

  void changColors4(i) {
    if (i == 1) {
      face4_1 = primaryColor;
      face4_2 = Colors.grey.shade400;
      face4_3 = Colors.grey.shade400;
      face4_4 = Colors.grey.shade400;
      face4_5 = Colors.grey.shade400;
    } else if (i == 2) {
      face4_1 = Colors.grey.shade400;
      face4_2 = primaryColor;
      face4_3 = Colors.grey.shade400;
      face4_4 = Colors.grey.shade400;
      face4_5 = Colors.grey.shade400;
    } else if (i == 3) {
      face4_1 = Colors.grey.shade400;
      face4_2 = Colors.grey.shade400;
      face4_3 = primaryColor;
      face4_4 = Colors.grey.shade400;
      face4_5 = Colors.grey.shade400;
    } else if (i == 4) {
      face4_1 = Colors.grey.shade400;
      face4_2 = Colors.grey.shade400;
      face4_3 = Colors.grey.shade400;
      face4_4 = primaryColor;
      face4_5 = Colors.grey.shade400;
    } else {
      face4_1 = Colors.grey.shade400;
      face4_2 = Colors.grey.shade400;
      face4_3 = Colors.grey.shade400;
      face4_4 = Colors.grey.shade400;
      face4_5 = primaryColor;
    }
  }

  void changColors5(i) {
    if (i == 1) {
      face5_1 = primaryColor;
      face5_2 = Colors.grey.shade400;
      face5_3 = Colors.grey.shade400;
      face5_4 = Colors.grey.shade400;
      face5_5 = Colors.grey.shade400;
    } else if (i == 2) {
      face5_1 = Colors.grey.shade400;
      face5_2 = primaryColor;
      face5_3 = Colors.grey.shade400;
      face5_4 = Colors.grey.shade400;
      face5_5 = Colors.grey.shade400;
    } else if (i == 3) {
      face5_1 = Colors.grey.shade400;
      face5_2 = Colors.grey.shade400;
      face5_3 = primaryColor;
      face5_4 = Colors.grey.shade400;
      face5_5 = Colors.grey.shade400;
    } else if (i == 4) {
      face5_1 = Colors.grey.shade400;
      face5_2 = Colors.grey.shade400;
      face5_3 = Colors.grey.shade400;
      face5_4 = primaryColor;
      face5_5 = Colors.grey.shade400;
    } else {
      face5_1 = Colors.grey.shade400;
      face5_2 = Colors.grey.shade400;
      face5_3 = Colors.grey.shade400;
      face5_4 = Colors.grey.shade400;
      face5_5 = primaryColor;
    }
  }

  void changColors6(i) {
    if (i == 1) {
      face6_1 = primaryColor;
      face6_2 = Colors.grey.shade400;
      face6_3 = Colors.grey.shade400;
      face6_4 = Colors.grey.shade400;
      face6_5 = Colors.grey.shade400;
    } else if (i == 2) {
      face6_1 = Colors.grey.shade400;
      face6_2 = primaryColor;
      face6_3 = Colors.grey.shade400;
      face6_4 = Colors.grey.shade400;
      face6_5 = Colors.grey.shade400;
    } else if (i == 3) {
      face6_1 = Colors.grey.shade400;
      face6_2 = Colors.grey.shade400;
      face6_3 = primaryColor;
      face6_4 = Colors.grey.shade400;
      face6_5 = Colors.grey.shade400;
    } else if (i == 4) {
      face6_1 = Colors.grey.shade400;
      face6_2 = Colors.grey.shade400;
      face6_3 = Colors.grey.shade400;
      face6_4 = primaryColor;
      face6_5 = Colors.grey.shade400;
    } else {
      face6_1 = Colors.grey.shade400;
      face6_2 = Colors.grey.shade400;
      face6_3 = Colors.grey.shade400;
      face6_4 = Colors.grey.shade400;
      face6_5 = primaryColor;
    }
  }

  void changColors7(i) {
    if (i == 1) {
      face7_1 = primaryColor;
      face7_2 = Colors.grey.shade400;
      face7_3 = Colors.grey.shade400;
      face7_4 = Colors.grey.shade400;
      face7_5 = Colors.grey.shade400;
    } else if (i == 2) {
      face7_1 = Colors.grey.shade400;
      face7_2 = primaryColor;
      face7_3 = Colors.grey.shade400;
      face7_4 = Colors.grey.shade400;
      face7_5 = Colors.grey.shade400;
    } else if (i == 3) {
      face7_1 = Colors.grey.shade400;
      face7_2 = Colors.grey.shade400;
      face7_3 = primaryColor;
      face7_4 = Colors.grey.shade400;
      face7_5 = Colors.grey.shade400;
    } else if (i == 4) {
      face7_1 = Colors.grey.shade400;
      face7_2 = Colors.grey.shade400;
      face7_3 = Colors.grey.shade400;
      face7_4 = primaryColor;
      face7_5 = Colors.grey.shade400;
    } else {
      face7_1 = Colors.grey.shade400;
      face7_2 = Colors.grey.shade400;
      face7_3 = Colors.grey.shade400;
      face7_4 = Colors.grey.shade400;
      face7_5 = primaryColor;
    }
  }

  void changColors8(i) {
    if (i == 1) {
      face8_1 = primaryColor;
      face8_2 = Colors.grey.shade400;
      face8_3 = Colors.grey.shade400;
      face8_4 = Colors.grey.shade400;
      face8_5 = Colors.grey.shade400;
    } else if (i == 2) {
      face8_1 = Colors.grey.shade400;
      face8_2 = primaryColor;
      face8_3 = Colors.grey.shade400;
      face8_4 = Colors.grey.shade400;
      face8_5 = Colors.grey.shade400;
    } else if (i == 3) {
      face8_1 = Colors.grey.shade400;
      face8_2 = Colors.grey.shade400;
      face8_3 = primaryColor;
      face8_4 = Colors.grey.shade400;
      face8_5 = Colors.grey.shade400;
    } else if (i == 4) {
      face8_1 = Colors.grey.shade400;
      face8_2 = Colors.grey.shade400;
      face8_3 = Colors.grey.shade400;
      face8_4 = primaryColor;
      face8_5 = Colors.grey.shade400;
    } else {
      face8_1 = Colors.grey.shade400;
      face8_2 = Colors.grey.shade400;
      face8_3 = Colors.grey.shade400;
      face8_4 = Colors.grey.shade400;
      face8_5 = primaryColor;
    }
  }

  void changColors9(i) {
    if (i == 1) {
      face9_1 = primaryColor;
      face9_2 = Colors.grey.shade400;
      face9_3 = Colors.grey.shade400;
      face9_4 = Colors.grey.shade400;
      face9_5 = Colors.grey.shade400;
    } else if (i == 2) {
      face9_1 = Colors.grey.shade400;
      face9_2 = primaryColor;
      face9_3 = Colors.grey.shade400;
      face9_4 = Colors.grey.shade400;
      face9_5 = Colors.grey.shade400;
    } else if (i == 3) {
      face9_1 = Colors.grey.shade400;
      face9_2 = Colors.grey.shade400;
      face9_3 = primaryColor;
      face9_4 = Colors.grey.shade400;
      face9_5 = Colors.grey.shade400;
    } else if (i == 4) {
      face9_1 = Colors.grey.shade400;
      face9_2 = Colors.grey.shade400;
      face9_3 = Colors.grey.shade400;
      face9_4 = primaryColor;
      face9_5 = Colors.grey.shade400;
    } else {
      face9_1 = Colors.grey.shade400;
      face9_2 = Colors.grey.shade400;
      face9_3 = Colors.grey.shade400;
      face9_4 = Colors.grey.shade400;
      face9_5 = primaryColor;
    }
  }

  void changColors10(i) {
    if (i == 1) {
      face10_1 = primaryColor;
      face10_2 = Colors.grey.shade400;
      face10_3 = Colors.grey.shade400;
      face10_4 = Colors.grey.shade400;
      face10_5 = Colors.grey.shade400;
    } else if (i == 2) {
      face10_1 = Colors.grey.shade400;
      face10_2 = primaryColor;
      face10_3 = Colors.grey.shade400;
      face10_4 = Colors.grey.shade400;
      face10_5 = Colors.grey.shade400;
    } else if (i == 3) {
      face10_1 = Colors.grey.shade400;
      face10_2 = Colors.grey.shade400;
      face10_3 = primaryColor;
      face10_4 = Colors.grey.shade400;
      face10_5 = Colors.grey.shade400;
    } else if (i == 4) {
      face10_1 = Colors.grey.shade400;
      face10_2 = Colors.grey.shade400;
      face10_3 = Colors.grey.shade400;
      face10_4 = primaryColor;
      face10_5 = Colors.grey.shade400;
    } else {
      face10_1 = Colors.grey.shade400;
      face10_2 = Colors.grey.shade400;
      face10_3 = Colors.grey.shade400;
      face10_4 = Colors.grey.shade400;
      face10_5 = primaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: questBackground,
      appBar: AppBarQuestion(progresPercent: 0.62),
      body: ListView(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.01,
              left: 10,
              right: 10,
              top: 16),
          children: [
            QuestionaireCard(
              textQuestion: _socialList[0],
              face1: face1_1,
              face2: face1_2,
              face3: face1_3,
              face4: face1_4,
              face5: face1_5,
              functionClick1: () {
                totalsocial = ValueQue.v1;
                setState(() {
                  changColors1(1);
                });
              },
              functionClick2: () {
                totalsocial = ValueQue.v2;
                setState(() {
                  changColors1(2);
                });
              },
              functionClick3: () {
                totalsocial = ValueQue.v3;
                setState(() {
                  changColors1(3);
                });
              },
              functionClick4: () {
                totalsocial = ValueQue.v4;
                setState(() {
                  changColors1(4);
                });
              },
              functionClick5: () {
                totalsocial = ValueQue.v5;
                setState(() {
                  changColors1(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _socialList[1],
              face1: face2_1,
              face2: face2_2,
              face3: face2_3,
              face4: face2_4,
              face5: face2_5,
              functionClick1: () {
                totalsocial1 = ValueQue.v1;
                setState(() {
                  changColors2(1);
                });
              },
              functionClick2: () {
                totalsocial1 = ValueQue.v2;
                setState(() {
                  changColors2(2);
                });
              },
              functionClick3: () {
                totalsocial1 = ValueQue.v3;
                setState(() {
                  changColors2(3);
                });
              },
              functionClick4: () {
                totalsocial1 = ValueQue.v4;
                setState(() {
                  changColors2(4);
                });
              },
              functionClick5: () {
                totalsocial1 = ValueQue.v5;
                setState(() {
                  changColors2(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _socialList[2],
              face1: face3_1,
              face2: face3_2,
              face3: face3_3,
              face4: face3_4,
              face5: face3_5,
              functionClick1: () {
                totalsocial2 = ValueQue.v1;
                setState(() {
                  changColors3(1);
                });
              },
              functionClick2: () {
                totalsocial2 = ValueQue.v2;
                setState(() {
                  changColors3(2);
                });
              },
              functionClick3: () {
                totalsocial2 = ValueQue.v3;
                setState(() {
                  changColors3(3);
                });
              },
              functionClick4: () {
                totalsocial2 = ValueQue.v4;
                setState(() {
                  changColors3(4);
                });
              },
              functionClick5: () {
                totalsocial2 = ValueQue.v5;
                setState(() {
                  changColors3(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _socialList[3],
              face1: face4_1,
              face2: face4_2,
              face3: face4_3,
              face4: face4_4,
              face5: face4_5,
              functionClick1: () {
                totalsocial3 = ValueQue.v1;
                setState(() {
                  changColors4(1);
                });
              },
              functionClick2: () {
                totalsocial3 = ValueQue.v2;
                setState(() {
                  changColors4(2);
                });
              },
              functionClick3: () {
                totalsocial3 = ValueQue.v3;
                setState(() {
                  changColors4(3);
                });
              },
              functionClick4: () {
                totalsocial3 = ValueQue.v4;
                setState(() {
                  changColors4(4);
                });
              },
              functionClick5: () {
                totalsocial3 = ValueQue.v5;
                setState(() {
                  changColors4(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _socialList[4],
              face1: face5_1,
              face2: face5_2,
              face3: face5_3,
              face4: face5_4,
              face5: face5_5,
              functionClick1: () {
                totalsocial4 = ValueQue.v1;
                setState(() {
                  changColors5(1);
                });
              },
              functionClick2: () {
                totalsocial4 = ValueQue.v2;
                setState(() {
                  changColors5(2);
                });
              },
              functionClick3: () {
                totalsocial4 = ValueQue.v3;
                setState(() {
                  changColors5(3);
                });
              },
              functionClick4: () {
                totalsocial4 = ValueQue.v4;
                setState(() {
                  changColors5(4);
                });
              },
              functionClick5: () {
                totalsocial4 = ValueQue.v5;
                setState(() {
                  changColors5(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _socialList[5],
              face1: face6_1,
              face2: face6_2,
              face3: face6_3,
              face4: face6_4,
              face5: face6_5,
              functionClick1: () {
                totalsocial5 = ValueQue.v1;
                setState(() {
                  changColors6(1);
                });
              },
              functionClick2: () {
                totalsocial5 = ValueQue.v2;
                setState(() {
                  changColors6(2);
                });
              },
              functionClick3: () {
                totalsocial5 = ValueQue.v3;
                setState(() {
                  changColors6(3);
                });
              },
              functionClick4: () {
                totalsocial5 = ValueQue.v4;
                setState(() {
                  changColors6(4);
                });
              },
              functionClick5: () {
                totalsocial5 = ValueQue.v5;
                setState(() {
                  changColors6(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _socialList[6],
              face1: face7_1,
              face2: face7_2,
              face3: face7_3,
              face4: face7_4,
              face5: face7_5,
              functionClick1: () {
                totalsocial6 = ValueQue.v1;
                setState(() {
                  changColors7(1);
                });
              },
              functionClick2: () {
                totalsocial6 = ValueQue.v2;
                setState(() {
                  changColors7(2);
                });
              },
              functionClick3: () {
                totalsocial6 = ValueQue.v3;
                setState(() {
                  changColors7(3);
                });
              },
              functionClick4: () {
                totalsocial6 = ValueQue.v4;
                setState(() {
                  changColors7(4);
                });
              },
              functionClick5: () {
                totalsocial6 = ValueQue.v5;
                setState(() {
                  changColors7(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _socialList[7],
              face1: face8_1,
              face2: face8_2,
              face3: face8_3,
              face4: face8_4,
              face5: face8_5,
              functionClick1: () {
                totalsocial7 = ValueQue.v1;
                setState(() {
                  changColors8(1);
                });
              },
              functionClick2: () {
                totalsocial7 = ValueQue.v2;
                setState(() {
                  changColors8(2);
                });
              },
              functionClick3: () {
                totalsocial7 = ValueQue.v3;
                setState(() {
                  changColors8(3);
                });
              },
              functionClick4: () {
                totalsocial7 = ValueQue.v4;
                setState(() {
                  changColors8(4);
                });
              },
              functionClick5: () {
                totalsocial7 = ValueQue.v5;
                setState(() {
                  changColors8(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _socialList[8],
              face1: face9_1,
              face2: face9_2,
              face3: face9_3,
              face4: face9_4,
              face5: face9_5,
              functionClick1: () {
                totalsocial8 = ValueQue.v1;
                setState(() {
                  changColors9(1);
                });
              },
              functionClick2: () {
                totalsocial8 = ValueQue.v2;
                setState(() {
                  changColors9(2);
                });
              },
              functionClick3: () {
                totalsocial8 = ValueQue.v3;
                setState(() {
                  changColors9(3);
                });
              },
              functionClick4: () {
                totalsocial8 = ValueQue.v4;
                setState(() {
                  changColors9(4);
                });
              },
              functionClick5: () {
                totalsocial8 = ValueQue.v5;
                setState(() {
                  changColors9(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _socialList[9],
              face1: face10_1,
              face2: face10_2,
              face3: face10_3,
              face4: face10_4,
              face5: face10_5,
              functionClick1: () {
                totalsocial9 = ValueQue.v1;
                setState(() {
                  changColors10(1);
                });
              },
              functionClick2: () {
                totalsocial9 = ValueQue.v2;
                setState(() {
                  changColors10(2);
                });
              },
              functionClick3: () {
                totalsocial9 = ValueQue.v3;
                setState(() {
                  changColors10(3);
                });
              },
              functionClick4: () {
                totalsocial9 = ValueQue.v4;
                setState(() {
                  changColors10(4);
                });
              },
              functionClick5: () {
                totalsocial9 = ValueQue.v5;
                setState(() {
                  changColors10(5);
                });
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(16.0)),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                  onPressed: () {
                    if (totalsocial > 0 &&
                        totalsocial1 > 0 &&
                        totalsocial2 > 0 &&
                        totalsocial3 > 0 &&
                        totalsocial4 > 0 &&
                        totalsocial5 > 0 &&
                        totalsocial6 > 0 &&
                        totalsocial7 > 0 &&
                        totalsocial8 > 0 &&
                        totalsocial9 > 0) {
                      SocialModel.social1 = totalsocial;
                      SocialModel.social2 = totalsocial1;
                      SocialModel.social3 = totalsocial2;
                      SocialModel.social4 = totalsocial3;
                      SocialModel.social5 = totalsocial4;
                      SocialModel.social6 = totalsocial5;
                      SocialModel.social7 = totalsocial6;
                      SocialModel.social8 = totalsocial7;
                      SocialModel.social9 = totalsocial8;
                      SocialModel.social10 = totalsocial9;

                      int result = SocialModel.resultSocial();
                      print('${result}');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Enterprising()));
                    }
                  },
                  child: Text(
                    'Next!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  )),
            )
          ]),
    );
  }
}
