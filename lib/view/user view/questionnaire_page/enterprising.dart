import 'package:flutter/material.dart';
import 'package:jobify/constant/colors.dart';
import 'package:jobify/constant/value_questionnaire.dart';
import 'package:jobify/models/models_questionnaire/enterprising_model.dart';
import 'package:jobify/widget/appbar_quest.dart';
import 'package:jobify/widget/questionnaire_cart.dart';

import 'conventional.dart';

class Enterprising extends StatefulWidget {
  const Enterprising({Key key}) : super(key: key);

  @override
  _EnterprisingState createState() => _EnterprisingState();
}

class _EnterprisingState extends State<Enterprising> {
  List _enterprisingList = [
    "1.Buy and sell stocks and bonds",
    "2.Manage a retail store",
    "3.Operate a beauty salon or barber shop",
    "4.Manage a department within a large company",
    "5.Start your own business",
    "6.Negotiate business contracts",
    "7.Represent a client in a lawsuit",
    "8.Market a new line of clothing",
    "9.Sell merchandise at a department store",
    "10.Manage a clothing store",
  ];

  int totalEnterprising = 0;
  int totalEnterprising1 = 0;
  int totalEnterprising2 = 0;
  int totalEnterprising3 = 0;
  int totalEnterprising4 = 0;
  int totalEnterprising5 = 0;
  int totalEnterprising6 = 0;
  int totalEnterprising7 = 0;
  int totalEnterprising8 = 0;
  int totalEnterprising9 = 0;

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
      appBar: AppBarQuestion(progresPercent: 0.81),
      body: ListView(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.01,
              left: 10,
              right: 10,
              top: 16),
          children: [
            QuestionaireCard(
              textQuestion: _enterprisingList[0],
              face1: face1_1,
              face2: face1_2,
              face3: face1_3,
              face4: face1_4,
              face5: face1_5,
              functionClick1: () {
                totalEnterprising = ValueQue.v1;
                setState(() {
                  changColors1(1);
                });
              },
              functionClick2: () {
                totalEnterprising = ValueQue.v2;
                setState(() {
                  changColors1(2);
                });
              },
              functionClick3: () {
                totalEnterprising = ValueQue.v3;
                setState(() {
                  changColors1(3);
                });
              },
              functionClick4: () {
                totalEnterprising = ValueQue.v4;
                setState(() {
                  changColors1(4);
                });
              },
              functionClick5: () {
                totalEnterprising = ValueQue.v5;
                setState(() {
                  changColors1(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _enterprisingList[1],
              face1: face2_1,
              face2: face2_2,
              face3: face2_3,
              face4: face2_4,
              face5: face2_5,
              functionClick1: () {
                totalEnterprising1 = ValueQue.v1;
                setState(() {
                  changColors2(1);
                });
              },
              functionClick2: () {
                totalEnterprising1 = ValueQue.v2;
                setState(() {
                  changColors2(2);
                });
              },
              functionClick3: () {
                totalEnterprising1 = ValueQue.v3;
                setState(() {
                  changColors2(3);
                });
              },
              functionClick4: () {
                totalEnterprising1 = ValueQue.v4;
                setState(() {
                  changColors2(4);
                });
              },
              functionClick5: () {
                totalEnterprising1 = ValueQue.v5;
                setState(() {
                  changColors2(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _enterprisingList[2],
              face1: face3_1,
              face2: face3_2,
              face3: face3_3,
              face4: face3_4,
              face5: face3_5,
              functionClick1: () {
                totalEnterprising2 = ValueQue.v1;
                setState(() {
                  changColors3(1);
                });
              },
              functionClick2: () {
                totalEnterprising2 = ValueQue.v2;
                setState(() {
                  changColors3(2);
                });
              },
              functionClick3: () {
                totalEnterprising2 = ValueQue.v3;
                setState(() {
                  changColors3(3);
                });
              },
              functionClick4: () {
                totalEnterprising2 = ValueQue.v4;
                setState(() {
                  changColors3(4);
                });
              },
              functionClick5: () {
                totalEnterprising2 = ValueQue.v5;
                setState(() {
                  changColors3(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _enterprisingList[3],
              face1: face4_1,
              face2: face4_2,
              face3: face4_3,
              face4: face4_4,
              face5: face4_5,
              functionClick1: () {
                totalEnterprising3 = ValueQue.v1;
                setState(() {
                  changColors4(1);
                });
              },
              functionClick2: () {
                totalEnterprising3 = ValueQue.v2;
                setState(() {
                  changColors4(2);
                });
              },
              functionClick3: () {
                totalEnterprising3 = ValueQue.v3;
                setState(() {
                  changColors4(3);
                });
              },
              functionClick4: () {
                totalEnterprising3 = ValueQue.v4;
                setState(() {
                  changColors4(4);
                });
              },
              functionClick5: () {
                totalEnterprising3 = ValueQue.v5;
                setState(() {
                  changColors4(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _enterprisingList[4],
              face1: face5_1,
              face2: face5_2,
              face3: face5_3,
              face4: face5_4,
              face5: face5_5,
              functionClick1: () {
                totalEnterprising4 = ValueQue.v1;
                setState(() {
                  changColors5(1);
                });
              },
              functionClick2: () {
                totalEnterprising4 = ValueQue.v2;
                setState(() {
                  changColors5(2);
                });
              },
              functionClick3: () {
                totalEnterprising4 = ValueQue.v3;
                setState(() {
                  changColors5(3);
                });
              },
              functionClick4: () {
                totalEnterprising4 = ValueQue.v4;
                setState(() {
                  changColors5(4);
                });
              },
              functionClick5: () {
                totalEnterprising4 = ValueQue.v5;
                setState(() {
                  changColors5(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _enterprisingList[5],
              face1: face6_1,
              face2: face6_2,
              face3: face6_3,
              face4: face6_4,
              face5: face6_5,
              functionClick1: () {
                totalEnterprising5 = ValueQue.v1;
                setState(() {
                  changColors6(1);
                });
              },
              functionClick2: () {
                totalEnterprising5 = ValueQue.v2;
                setState(() {
                  changColors6(2);
                });
              },
              functionClick3: () {
                totalEnterprising5 = ValueQue.v3;
                setState(() {
                  changColors6(3);
                });
              },
              functionClick4: () {
                totalEnterprising5 = ValueQue.v4;
                setState(() {
                  changColors6(4);
                });
              },
              functionClick5: () {
                totalEnterprising5 = ValueQue.v5;
                setState(() {
                  changColors6(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _enterprisingList[6],
              face1: face7_1,
              face2: face7_2,
              face3: face7_3,
              face4: face7_4,
              face5: face7_5,
              functionClick1: () {
                totalEnterprising6 = ValueQue.v1;
                setState(() {
                  changColors7(1);
                });
              },
              functionClick2: () {
                totalEnterprising6 = ValueQue.v2;
                setState(() {
                  changColors7(2);
                });
              },
              functionClick3: () {
                totalEnterprising6 = ValueQue.v3;
                setState(() {
                  changColors7(3);
                });
              },
              functionClick4: () {
                totalEnterprising6 = ValueQue.v4;
                setState(() {
                  changColors7(4);
                });
              },
              functionClick5: () {
                totalEnterprising6 = ValueQue.v5;
                setState(() {
                  changColors7(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _enterprisingList[7],
              face1: face8_1,
              face2: face8_2,
              face3: face8_3,
              face4: face8_4,
              face5: face8_5,
              functionClick1: () {
                totalEnterprising7 = ValueQue.v1;
                setState(() {
                  changColors8(1);
                });
              },
              functionClick2: () {
                totalEnterprising7 = ValueQue.v2;
                setState(() {
                  changColors8(2);
                });
              },
              functionClick3: () {
                totalEnterprising7 = ValueQue.v3;
                setState(() {
                  changColors8(3);
                });
              },
              functionClick4: () {
                totalEnterprising7 = ValueQue.v4;
                setState(() {
                  changColors8(4);
                });
              },
              functionClick5: () {
                totalEnterprising7 = ValueQue.v5;
                setState(() {
                  changColors8(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _enterprisingList[8],
              face1: face9_1,
              face2: face9_2,
              face3: face9_3,
              face4: face9_4,
              face5: face9_5,
              functionClick1: () {
                totalEnterprising8 = ValueQue.v1;
                setState(() {
                  changColors9(1);
                });
              },
              functionClick2: () {
                totalEnterprising8 = ValueQue.v2;
                setState(() {
                  changColors9(2);
                });
              },
              functionClick3: () {
                totalEnterprising8 = ValueQue.v3;
                setState(() {
                  changColors9(3);
                });
              },
              functionClick4: () {
                totalEnterprising8 = ValueQue.v4;
                setState(() {
                  changColors9(4);
                });
              },
              functionClick5: () {
                totalEnterprising8 = ValueQue.v5;
                setState(() {
                  changColors9(5);
                });
              },
            ),
            QuestionaireCard(
              textQuestion: _enterprisingList[9],
              face1: face10_1,
              face2: face10_2,
              face3: face10_3,
              face4: face10_4,
              face5: face10_5,
              functionClick1: () {
                totalEnterprising9 = ValueQue.v1;
                setState(() {
                  changColors10(1);
                });
              },
              functionClick2: () {
                totalEnterprising9 = ValueQue.v2;
                setState(() {
                  changColors10(2);
                });
              },
              functionClick3: () {
                totalEnterprising9 = ValueQue.v3;
                setState(() {
                  changColors10(3);
                });
              },
              functionClick4: () {
                totalEnterprising9 = ValueQue.v4;
                setState(() {
                  changColors10(4);
                });
              },
              functionClick5: () {
                totalEnterprising9 = ValueQue.v5;
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
                    if (totalEnterprising > 0 &&
                        totalEnterprising1 > 0 &&
                        totalEnterprising2 > 0 &&
                        totalEnterprising3 > 0 &&
                        totalEnterprising4 > 0 &&
                        totalEnterprising5 > 0 &&
                        totalEnterprising6 > 0 &&
                        totalEnterprising7 > 0 &&
                        totalEnterprising8 > 0 &&
                        totalEnterprising9 > 0) {
                      EnterprisingModel.enterprising1 = totalEnterprising;
                      EnterprisingModel.enterprising2 = totalEnterprising1;
                      EnterprisingModel.enterprising3 = totalEnterprising2;
                      EnterprisingModel.enterprising4 = totalEnterprising3;
                      EnterprisingModel.enterprising5 = totalEnterprising4;
                      EnterprisingModel.enterprising6 = totalEnterprising5;
                      EnterprisingModel.enterprising7 = totalEnterprising6;
                      EnterprisingModel.enterprising8 = totalEnterprising7;
                      EnterprisingModel.enterprising9 = totalEnterprising8;
                      EnterprisingModel.enterprising10 = totalEnterprising9;

                      int result = EnterprisingModel.resultEnterprising();
                      print('${result}');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Conventional()));
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
