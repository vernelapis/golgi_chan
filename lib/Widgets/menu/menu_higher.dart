import 'package:flutter/src/widgets/image.dart';

import '../../gen/assets.gen.dart';

enum Menus{
  file(number: 0,text: "ファイル"),
  setting(number: 1, text: "設定"),
  back(number: 2, text: "戻す"),
  help(number: 3, text: "ヘルプ");

  const Menus({required this.number,required this.text});

  final int number;
  final String text;

  Image get image{
    switch(this){
      case Menus.file:
        return Assets.image.file.image();
      case Menus.setting:
        return Assets.image.setting.image();
      case Menus.back:
        return Assets.image.back.image();
      case Menus.help:
        return Assets.image.help.image();
    }
  }


}