
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

import 'icon_questionaaire.dart';

class QuestionaireCard extends StatelessWidget {
   QuestionaireCard({this.face5,this.face4,this.face3,this.face2,this.face1,
     this.functionClick1,this.textQuestion,this.functionClick2,this.functionClick3,
     this.functionClick4,this.functionClick5
   });
   Function functionClick1;
   Color face1;
   Color face2;
   Color face3;
   Color face4;
   Color face5;
   String textQuestion;
   Function functionClick4;
   Function functionClick2;
   Function functionClick3;
   Function functionClick5;

  @override
  Widget build(BuildContext context) {
    return

      Card(
        elevation: 4,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('${textQuestion}'),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  IconQuest(
                    text: '  Strongly\n Angry',
                    iconData: CommunityMaterialIcons.emoticon_angry,
                    functionClicks: functionClick1,
                    face: face1,
                  ),

                  IconQuest(
                    text: ' dislike',
                    iconData: CommunityMaterialIcons.emoticon_sad,
                    functionClicks: functionClick2,
                    face: face2,
                  ),

                  IconQuest(
                    text: '  Not Sure',
                    iconData: CommunityMaterialIcons.emoticon_neutral,
                    functionClicks:functionClick3,
                    face: face3,
                  ),

                  IconQuest(
                    text: '  Like',
                    iconData: CommunityMaterialIcons.emoticon_happy,
                    functionClicks: functionClick4,
                    face: face4,
                  ),

                  IconQuest(
                    text: ' Strongly\nLike',
                    iconData: CommunityMaterialIcons.emoticon_excited,
                    functionClicks: functionClick5,
                    face: face5,
                  ),

                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     IconButton(
                  //         onPressed: functionClick,
                  //         icon: Icon(
                  //           CommunityMaterialIcons.emoticon_angry,
                  //           size: 40,
                  //           color:face1,
                  //         )),
                  //     Text(
                  //       '  Strongly\nAngry',
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(),
                  //     ),
                  //   ],
                  // ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     IconButton(
                  //         onPressed:functionClick,
                  //         icon: Icon(
                  //           CommunityMaterialIcons.emoticon_sad,
                  //           size: 40,
                  //           color: face2,
                  //         )),
                  //     Text('  dislike', textAlign: TextAlign.center),
                  //   ],
                  // ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     IconButton(
                  //         onPressed: functionClick,
                  //         icon: Icon(
                  //           CommunityMaterialIcons.emoticon_neutral,
                  //           size: 40,
                  //           color: face3,
                  //         )),
                  //     Text('  Not Sure', textAlign: TextAlign.center),
                  //   ],
                  // ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     IconButton(
                  //         onPressed: functionClick,
                  //         icon: Icon(
                  //           CommunityMaterialIcons.emoticon_happy,
                  //           size: 40,
                  //           color:face4,
                  //         )),
                  //     Text('  Like', textAlign: TextAlign.center),
                  //   ],
                  // ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     IconButton(
                  //         onPressed: functionClick,
                  //         icon: Icon(
                  //           CommunityMaterialIcons.emoticon_excited,
                  //           size: 40,
                  //           color: face5,
                  //         )),
                  //     Text('  Strongly\nLike', textAlign: TextAlign.center),
                  //   ],
                  // ),

                ],
              )
            ],
          ),
        ),
      );
  }}

