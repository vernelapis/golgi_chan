import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:golgi_chan/Widgets/Common/dialog_menu.dart';
import 'package:golgi_chan/constants/color.dart';
import 'package:golgi_chan/constants/sizes.dart';
import '../menu/menu_higher.dart';

class MenuButton extends StatelessWidget{
  final Menus menu;
  final WidgetRef ref;
  final Function? onTap;

  const MenuButton({super.key, required this.menu, required this.ref, this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: (){
        onTap ?? showMenuDialog(context: context, menu: menu, ref: ref);
      },
      child: Container(
        color: ConstantsColors.commonCreamShadow,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        height: ConstantsSizes.menuBarHeight,
        width: ConstantsSizes.menuButtonWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,width: 20,child: menu.image,),
            const SizedBox(width: 10,),
            Text(menu.text,),
          ],
        ),
      ),
    );
  }
}