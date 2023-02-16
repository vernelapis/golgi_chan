import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:golgi_chan/constants/color.dart';
import 'package:golgi_chan/constants/sizes.dart';
import '../../Widgets/Common/button_menu_bar.dart';
import '../../enums/menu_bar.dart';
import 'package:golgi_chan/flython/flython.dart';
import 'package:golgi_chan/provider/main_image_providers.dart';
import 'package:tabbed_view/tabbed_view.dart';
import '../../Widgets/Common/button_menu.dart';
import '../../gen/assets.gen.dart';

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
          MenuBarButton(menu: Menus.back, onTap: () async{
            // await _futureFlython();
          }),
          const MenuBarButton(menu: Menus.help),
        ],
      ),
    );
  }

  // Future<void> _futureFlython() async {
  //   debugPrint("flython1");
  //   final flython = ReadImage();
  //   debugPrint("flython2");
  //   await flython.initialize("python", "./python/main.py", true);
  //   debugPrint("flython3");
  //   var systemVersion = await flython.sysVersionPrint();
  //   debugPrint("flython4");
  //   ref.read(imageTabProvider.notifier).state.add(TabData(text: systemVersion.toString()),);
  //   debugPrint("flython5");
  //   flython.finalize();
  // }
  //
  // Future<void> _future2() async {
  //   var systemVersion = await ref.watch(flythonInstanceProvider).sysVersionPrint();
  //   debugPrint("flythonNext!$systemVersion");
  //   ref.read(imageTabProvider.notifier).state.add(TabData(text: systemVersion.toString()),);
  // }

}