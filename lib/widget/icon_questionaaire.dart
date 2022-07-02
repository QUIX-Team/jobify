import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class IconQuest extends StatelessWidget {
   IconQuest({this.iconData,this.face,this.functionClicks,this.text});
   Function functionClicks;
   IconData iconData;
   Color face;
   String text;
  @override
  Widget build(BuildContext context) {
    return Column(
     // mainAxisAlignment: MainAxisAlignment.end,
     // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
            onPressed:functionClicks,
            icon: Icon(
              iconData,
              size: 40,
              color: face,
            )),
        Text(text, textAlign: TextAlign.center),
      ],
    );
  }
}
