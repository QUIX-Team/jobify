import 'package:flutter/material.dart';

ListTile listTileDrawer({String text,IconData iconData,Color color,Function pressed}) {
  return ListTile(
    onTap: pressed,
    leading: Icon(iconData,color: color,),
    title: Text(text,style: TextStyle(color: color),),
  );
}