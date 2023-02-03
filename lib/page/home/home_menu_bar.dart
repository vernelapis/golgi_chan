import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:golgi_chan/constants/color.dart';
import '../../Widgets/Common/button_menu.dart';
import '../../gen/assets.gen.dart';

class HomeMenuBar extends StatelessWidget{
  final WidgetRef ref;
  const HomeMenuBar ({super.key, required this.ref});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        color:  ConstantsColors.commonCream,
        border: Border(
          top: BorderSide(
          color: Colors.black,
          width: 1,
        ),)
      ),
      child: Row(
        children: [
          MenuButton(text: "ファイル", image: Assets.image.file.image(fit: BoxFit.fill), ref: ref, onTap: (){}),
          MenuButton(text: "設定", image: Assets.image.setting.image(fit: BoxFit.fill), ref: ref, onTap: (){}),
          MenuButton(text: "戻す", image: Assets.image.back.image(fit: BoxFit.fill), ref: ref, onTap: (){}),
          MenuButton(text: "ヘルプ", image: Assets.image.help.image(fit: BoxFit.fill), ref: ref, onTap: (){}),
        ],
      ),
    );
  }


}