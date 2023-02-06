import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:golgi_chan/Widgets/Common/button_menu_bar.dart';
import 'package:golgi_chan/Widgets/menu/menu_higher.dart';
import 'package:golgi_chan/constants/color.dart';
import 'package:golgi_chan/constants/sizes.dart';

void showMenuDialog({required BuildContext context, required Menus menu, required WidgetRef ref}){
  showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (dialogContext){
        return Dialog(
          alignment: AlignmentDirectional.topStart,
          insetPadding: EdgeInsets.only(top: 40, left: menu.index * ConstantsSizes.menuButtonWidth),
          shape: const BeveledRectangleBorder(),
          child: Container(
            height: 100,
            width: ConstantsSizes.lowerMenuWidth,
            color: ConstantsColors.commonCream,
          ));
      }).then((value) => ref.read(menuBarButtonProvider.notifier).state = -1);
}