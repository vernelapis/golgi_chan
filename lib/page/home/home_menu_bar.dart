import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:golgi_chan/constants/color.dart';
import 'package:golgi_chan/constants/sizes.dart';
import '../../Widgets/Common/button_menu_bar.dart';
import '../../Widgets/menu/menu_higher.dart';

class HomeMenuBar extends StatelessWidget{
  final WidgetRef ref;
  const HomeMenuBar ({super.key, required this.ref});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConstantsSizes.menuBarHeight,
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
          const MenuButton(menu: Menus.file),
          const MenuButton(menu: Menus.setting),
          MenuButton(menu: Menus.back, onTap: () {
          }),
          const MenuButton(menu: Menus.help),
        ],
      ),
    );
  }


}