import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:golgi_chan/Widgets/Common/button_menu_bar.dart';
import 'package:golgi_chan/Widgets/menu/file_menu_dialog.dart';
import 'package:golgi_chan/Widgets/menu/help_menu_dialog.dart';
import 'package:golgi_chan/enums/menu_bar.dart';
import 'package:golgi_chan/constants/color.dart';
import 'package:golgi_chan/constants/sizes.dart';
import '../menu/setting_menu_dialog.dart';

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
            width: ConstantsSizes.lowerMenuWidth,
            color: ConstantsColors.commonCream,
            child: _switchChild(menu,dialogContext,ref),
          ),
        );
      }).then((value) => ref.read(menuBarButtonProvider.notifier).state = -1);
}

Widget _switchChild(Menus menu, BuildContext dialogContext, WidgetRef ref){
  switch (menu) {
    case Menus.file:
      return fileMenuDialog(dialogContext, ref);
    case Menus.setting:
      return settingMenuDialog(dialogContext);
    case Menus.back:
      return const SizedBox.shrink();
    case Menus.help:
      return helpMenuDialog(dialogContext);
  }
}