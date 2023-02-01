import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:golgi_chan/Widgets/Common/button_menu.dart';
import 'package:golgi_chan/page/home/home.dart';

class HomeWidgets{

  Widget homeMenuBar(WidgetRef ref){
    return Container(
      color: ,
      child: Row(children: [
        MenuButton(text: "ファイル", ref: ref, onTap: (){}),
        MenuButton(text: "設定", ref: ref, onTap: (){}),
        MenuButton(text: "戻す", ref: ref, onTap: (){}),
        MenuButton(text: "消しゴム", ref: ref, onTap: (){}),
        MenuButton(text: "ヘルプ", ref: ref, onTap: (){}),

      ],),
    );
  }

}