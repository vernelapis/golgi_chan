import 'package:flutter/cupertino.dart';
import 'package:golgi_chan/Widgets/Common/button_menu.dart';

Widget fileMenuDialog(){
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      MenuButton(
          text: "画像取り込み",
          shortCut: "test",
          onTap: (){}),
      MenuButton(
          text: "画像取り込み",
          onTap: (){}),
      MenuButton(
          text: "画像取り込み",
          onTap: (){}),
      MenuButton(
          text: "画像取り込み",
          onTap: (){}),
      MenuButton(
          text: "画像取り込み",
          onTap: (){}),
    ],);
}