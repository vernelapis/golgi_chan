import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:golgi_chan/Widgets/Common/dialog_menu.dart';
import 'package:golgi_chan/constants/color.dart';
import 'package:golgi_chan/constants/sizes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../enums/menu_bar.dart';

final menuBarButtonProvider = StateProvider((ref) => -1);

class MenuBarButton extends HookConsumerWidget{
  final Menus menu;
  final Function? onTap;

  const MenuBarButton({super.key, required this.menu, this.onTap,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hover = useState(false);
    return MouseRegion(
      onEnter: (_) => hover.value = true,
      onExit: (_) => hover.value = false,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap == null
            ? (){
              ref.read(menuBarButtonProvider.notifier).state = menu.index;
              showMenuDialog(context: context, menu: menu, ref: ref);}
            : ()async{onTap!();},
        child: Container(
          color: (ref.watch(menuBarButtonProvider) == menu.index || hover.value)
              ? ConstantsColors.commonCreamShadow
              : ConstantsColors.commonCream,
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
      ),
    );
  }
}