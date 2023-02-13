import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:golgi_chan/constants/color.dart';
import 'package:golgi_chan/constants/sizes.dart';
import '../../Widgets/Common/button_menu_bar.dart';
import '../../enums/menu_bar.dart';

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
          const MenuBarButton(menu: Menus.file),
          const MenuBarButton(menu: Menus.setting),
          MenuBarButton(menu: Menus.back, onTap: () {
          }),
          const MenuBarButton(menu: Menus.help),
        ],
      ),
    );
  }


}