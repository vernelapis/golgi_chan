import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:golgi_chan/constants/color.dart';
import 'package:golgi_chan/page/home/home_navigation_pallet.dart';
import 'package:golgi_chan/page/home/home_tool_pallet.dart';
import 'package:golgi_chan/page/main_image/image_tab_view.dart';
import 'package:menu_bar/menu_bar.dart';
import '../../Widgets/menu/menu_bar_buttons.dart';
import 'home_arrow_pallet.dart';
import 'home_information_pallet.dart';
import 'home_menu_bar.dart';


class MyHomePage extends ConsumerWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref){
    return MaterialApp(
      theme: ThemeData(
        menuTheme: const MenuThemeData(
          style: MenuStyle(
            padding:
            MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 16.0)),),),),
      home: MenuBarWidget(
        barButtons: menuBarButtons(),
        barStyle: const MenuStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.zero),
          backgroundColor: MaterialStatePropertyAll(Color(0xFF2b2b2b)),
          maximumSize: MaterialStatePropertyAll(Size(double.infinity, 28.0)),
        ),
        barButtonStyle: const ButtonStyle(
          padding:
            MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 6.0)),
          minimumSize: MaterialStatePropertyAll(Size(0.0, 32.0)),
        ),
        menuButtonStyle: const ButtonStyle(
          minimumSize: MaterialStatePropertyAll(Size.fromHeight(36.0)),
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0)),
        ),
        enabled: true,
        child:_mainArea()
      )
    );
  }

  Widget _mainArea(){
    return Container(
      color: ConstantsColors.commonBaseColor,
      child: Row(
        children: [
          ImageTabView(),
          _sidePallet()
        ],),
    );
  }

  Widget _sidePallet(){
    return Container(
      margin: const EdgeInsets.all(2),
      width: 400,
      child: Column(
        children: [
          HomeNavigationPallet(),
          const SizedBox(height: 2,),
          HomeInformationPallet(),
          const SizedBox(height: 2,),
          HomeToolPallet(),
          const SizedBox(height: 2,),
          HomeArrowPallet(),
        ],),
    );
  }

}