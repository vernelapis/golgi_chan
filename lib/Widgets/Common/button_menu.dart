import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:golgi_chan/Widgets/Common/dialog_menu.dart';
import 'package:golgi_chan/constants/color.dart';
import 'package:golgi_chan/constants/sizes.dart';
import '../../enums/menu_bar.dart';

class MenuButton extends HookWidget{
  final String text;
  final Function onTap;
  final String? shortCut;

  const MenuButton({super.key, required this.text, required this.onTap, this.shortCut});

  @override
  Widget build(BuildContext context) {
    final hover = useState(false);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: (){
        Navigator.pop(context);
        onTap();
      },
      child: MouseRegion(
        onEnter: (_) => hover.value = true,
        onExit: (_) => hover.value = false,
        child: Container(
          alignment: AlignmentDirectional.center,
          color: hover.value ? ConstantsColors.commonCreamShadow : ConstantsColors.commonCream,
          margin: const EdgeInsets.only(top: 2, bottom: 1, left: 5, right: 5),
          padding: const EdgeInsets.symmetric(horizontal: 2),
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text),
              Text(shortCut ?? "")
            ],)
        ),
      ),
    );
  }
}