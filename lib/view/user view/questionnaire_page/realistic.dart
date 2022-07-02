import 'package:flutter/material.dart';
import 'package:jobify/constant/colors.dart';
import 'package:jobify/constant/value_questionnaire.dart';
import 'package:jobify/models/models_questionnaire/realstic_model.dart';
import 'package:jobify/widget/appbar_quest.dart';
import 'package:jobify/widget/questionnaire_cart.dart';

import 'investigative.dart';

class Realistic extends StatefulWidget {
  static const id = 'Realistic';

  @override
  _RealisticState createState() => _RealisticState();
}

class _RealisticState extends State<Realistic> {
  List realisticList = [
    "1.Build kitchen cabinets",
    "2.Lay brick or tile",
    "3.Repair household appliances",
    "4.Raise fish in a fish hatchery",
    "5.Assemble electronic parts",
    "6.Drive a truck to deliver packages to offices and homes",
    "7.Test the quality of parts before shipment",
    "8.Repair and install locks",
    "9.Set up and operate machines to make products",
    "10.Put out forest fires",
  ];

  int totalRealstic = 0;
  int totalRealstic1 = 0;
  int totalRealstic2 = 0;
  int totalRealstic3 = 0;
  int totalRealstic4 = 0;
  int totalRealstic5 = 0;
  int totalRealstic6 = 0;
  int totalRealstic7 = 0;
  int totalRealstic8 = 0;
  int totalRealstic9 = 0;

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

  Color color1 = Colors.grey.shade400;
  Color color2 = Colors.grey.shade400;
  Color color3 = Colors.grey.shade400;
  Color color4 = Colors.grey.shade400;
  Color color5 = Colors.grey.shade400;
  changeIconColor() {
    color1 = Colors.red;
    color2 = Colors.grey.shade400;
    color3 = Colors.grey.shade400;
    color4 = Colors.grey.shade400;
    color5 = Colors.grey.shade400;
  }

  Color faceTest = Colors.grey.shade400;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: questBackground,
      appBar: AppBarQuestion(progresPercent: 0.05),
      body: ListView(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.01,
            left: 10,
            right: 10,
            top: 16),
        children: [
          QuestionaireCard(
            textQuestion: realisticList[0],
            face1: face1_1,
            face2: face1_2,
            face3: face1_3,
            face4: face1_4,
            face5: face1_5,
            functionClick1: () {
              totalRealstic = ValueQue.v1;
              setState(() {
                changColors1(1);
              });
            },
            functionClick2: () {
              totalRealstic = ValueQue.v2;
              setState(() {
                changColors1(2);
              });
            },
            functionClick3: () {
              totalRealstic = ValueQue.v3;
              setState(() {
                changColors1(3);
              });
            },
            functionClick4: () {
              totalRealstic = ValueQue.v4;
              setState(() {
                changColors1(4);
              });
            },
            functionClick5: () {
              totalRealstic = ValueQue.v5;
              setState(() {
                changColors1(5);
              });
            },
          ),
          QuestionaireCard(
            textQuestion: realisticList[1],
            face1: face2_1,
            face2: face2_2,
            face3: face2_3,
            face4: face2_4,
            face5: face2_5,
            functionClick1: () {
              totalRealstic1 = ValueQue.v1;
              setState(() {
                changColors2(1);
              });
            },
            functionClick2: () {
              totalRealstic1 = ValueQue.v2;
              setState(() {
                changColors2(2);
              });
            },
            functionClick3: () {
              totalRealstic1 = ValueQue.v3;
              setState(() {
                changColors2(3);
              });
            },
            functionClick4: () {
              totalRealstic1 = ValueQue.v4;
              setState(() {
                changColors2(4);
              });
            },
            functionClick5: () {
              totalRealstic1 = ValueQue.v5;
              setState(() {
                changColors2(5);
              });
            },
          ),
          QuestionaireCard(
            textQuestion: realisticList[2],
            face1: face3_1,
            face2: face3_2,
            face3: face3_3,
            face4: face3_4,
            face5: face3_5,
            functionClick1: () {
              totalRealstic2 = ValueQue.v1;
              setState(() {
                changColors3(1);
              });
            },
            functionClick2: () {
              totalRealstic2 = ValueQue.v2;
              setState(() {
                changColors3(2);
              });
            },
            functionClick3: () {
              totalRealstic2 = ValueQue.v3;
              setState(() {
                changColors3(3);
              });
            },
            functionClick4: () {
              totalRealstic2 = ValueQue.v4;
              setState(() {
                changColors3(4);
              });
            },
            functionClick5: () {
              totalRealstic2 = ValueQue.v5;
              setState(() {
                changColors3(5);
              });
            },
          ),
          QuestionaireCard(
            textQuestion: realisticList[3],
            face1: face4_1,
            face2: face4_2,
            face3: face4_3,
            face4: face4_4,
            face5: face4_5,
            functionClick1: () {
              totalRealstic3 = ValueQue.v1;
              setState(() {
                changColors4(1);
              });
            },
            functionClick2: () {
              totalRealstic3 = ValueQue.v2;
              setState(() {
                changColors4(2);
              });
            },
            functionClick3: () {
              totalRealstic3 = ValueQue.v3;
              setState(() {
                changColors4(3);
              });
            },
            functionClick4: () {
              totalRealstic3 = ValueQue.v4;
              setState(() {
                changColors4(4);
              });
            },
            functionClick5: () {
              totalRealstic3 = ValueQue.v5;
              setState(() {
                changColors4(5);
              });
            },
          ),
          QuestionaireCard(
            textQuestion: realisticList[4],
            face1: face5_1,
            face2: face5_2,
            face3: face5_3,
            face4: face5_4,
            face5: face5_5,
            functionClick1: () {
              totalRealstic4 = ValueQue.v1;
              setState(() {
                changColors5(1);
              });
            },
            functionClick2: () {
              totalRealstic4 = ValueQue.v2;
              setState(() {
                changColors5(2);
              });
            },
            functionClick3: () {
              totalRealstic4 = ValueQue.v3;
              setState(() {
                changColors5(3);
              });
            },
            functionClick4: () {
              totalRealstic4 = ValueQue.v4;
              setState(() {
                changColors5(4);
              });
            },
            functionClick5: () {
              totalRealstic4 = ValueQue.v5;
              setState(() {
                changColors5(5);
              });
            },
          ),
          QuestionaireCard(
            textQuestion: realisticList[5],
            face1: face6_1,
            face2: face6_2,
            face3: face6_3,
            face4: face6_4,
            face5: face6_5,
            functionClick1: () {
              totalRealstic5 = ValueQue.v1;
              setState(() {
                changColors6(1);
              });
            },
            functionClick2: () {
              totalRealstic5 = ValueQue.v2;
              setState(() {
                changColors6(2);
              });
            },
            functionClick3: () {
              totalRealstic5 = ValueQue.v3;
              setState(() {
                changColors6(3);
              });
            },
            functionClick4: () {
              totalRealstic5 = ValueQue.v4;
              setState(() {
                changColors6(4);
              });
            },
            functionClick5: () {
              totalRealstic5 = ValueQue.v5;
              setState(() {
                changColors6(5);
              });
            },
          ),
          QuestionaireCard(
            textQuestion: realisticList[6],
            face1: face7_1,
            face2: face7_2,
            face3: face7_3,
            face4: face7_4,
            face5: face7_5,
            functionClick1: () {
              totalRealstic6 = ValueQue.v1;
              setState(() {
                changColors7(1);
              });
            },
            functionClick2: () {
              totalRealstic6 = ValueQue.v2;
              setState(() {
                changColors7(2);
              });
            },
            functionClick3: () {
              totalRealstic6 = ValueQue.v3;
              setState(() {
                changColors7(3);
              });
            },
            functionClick4: () {
              totalRealstic6 = ValueQue.v4;
              setState(() {
                changColors7(4);
              });
            },
            functionClick5: () {
              totalRealstic6 = ValueQue.v5;
              setState(() {
                changColors7(5);
              });
            },
          ),
          QuestionaireCard(
            textQuestion: realisticList[7],
            face1: face8_1,
            face2: face8_2,
            face3: face8_3,
            face4: face8_4,
            face5: face8_5,
            functionClick1: () {
              totalRealstic7 = ValueQue.v1;
              setState(() {
                changColors8(1);
              });
            },
            functionClick2: () {
              totalRealstic7 = ValueQue.v2;
              setState(() {
                changColors8(2);
              });
            },
            functionClick3: () {
              totalRealstic7 = ValueQue.v3;
              setState(() {
                changColors8(3);
              });
            },
            functionClick4: () {
              totalRealstic7 = ValueQue.v4;
              setState(() {
                changColors8(4);
              });
            },
            functionClick5: () {
              totalRealstic7 = ValueQue.v5;
              setState(() {
                changColors8(5);
              });
            },
          ),
          QuestionaireCard(
            textQuestion: realisticList[8],
            face1: face9_1,
            face2: face9_2,
            face3: face9_3,
            face4: face9_4,
            face5: face9_5,
            functionClick1: () {
              totalRealstic8 = ValueQue.v1;
              setState(() {
                changColors9(1);
              });
            },
            functionClick2: () {
              totalRealstic8 = ValueQue.v2;
              setState(() {
                changColors9(2);
              });
            },
            functionClick3: () {
              totalRealstic8 = ValueQue.v3;
              setState(() {
                changColors9(3);
              });
            },
            functionClick4: () {
              totalRealstic8 = ValueQue.v4;
              setState(() {
                changColors9(4);
              });
            },
            functionClick5: () {
              totalRealstic8 = ValueQue.v5;
              setState(() {
                changColors9(5);
              });
            },
          ),
          QuestionaireCard(
            textQuestion: realisticList[9],
            face1: face10_1,
            face2: face10_2,
            face3: face10_3,
            face4: face10_4,
            face5: face10_5,
            functionClick1: () {
              totalRealstic9 = ValueQue.v1;
              setState(() {
                changColors10(1);
              });
            },
            functionClick2: () {
              totalRealstic9 = ValueQue.v2;
              setState(() {
                changColors10(2);
              });
            },
            functionClick3: () {
              totalRealstic9 = ValueQue.v3;
              setState(() {
                changColors10(3);
              });
            },
            functionClick4: () {
              totalRealstic9 = ValueQue.v4;
              setState(() {
                changColors10(4);
              });
            },
            functionClick5: () {
              totalRealstic9 = ValueQue.v5;
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
                  if (totalRealstic > 0 &&
                      totalRealstic1 > 0 &&
                      totalRealstic2 > 0 &&
                      totalRealstic3 > 0 &&
                      totalRealstic4 > 0 &&
                      totalRealstic5 > 0 &&
                      totalRealstic6 > 0 &&
                      totalRealstic7 > 0 &&
                      totalRealstic8 > 0 &&
                      totalRealstic9 > 0) {
                    RealstictModel.realstic1 = totalRealstic;
                    RealstictModel.realstic2 = totalRealstic1;
                    RealstictModel.realstic3 = totalRealstic2;
                    RealstictModel.realstic4 = totalRealstic3;
                    RealstictModel.realstic5 = totalRealstic4;
                    RealstictModel.realstic6 = totalRealstic5;
                    RealstictModel.realstic7 = totalRealstic6;
                    RealstictModel.realstic8 = totalRealstic7;
                    RealstictModel.realstic9 = totalRealstic8;
                    RealstictModel.realstic10 = totalRealstic9;
                    int result = RealstictModel.resultRealistc();
                    print('${result}');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Investigativw()));
                  }
                },
                child: Text(
                  'Next!',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                )),
          ),
        ],
      ),
    );
  }
}
