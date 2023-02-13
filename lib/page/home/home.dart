import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:golgi_chan/constants/color.dart';
import 'package:golgi_chan/flython/flython.dart';
import 'package:golgi_chan/page/home/home_navigation_pallet.dart';
import 'package:golgi_chan/page/home/home_tool_pallet.dart';
import 'package:golgi_chan/page/main_image/image_tab_view.dart';
import 'home_arrow_pallet.dart';
import 'home_information_pallet.dart';
import 'home_menu_bar.dart';


class MyHomePage extends ConsumerWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref){

    // ref.watch(flythonInstanceProvider).initialize("python", "./python/main.py", true);

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   ref.watch(flythonInstanceProvider).finalize();
    // });

    return Scaffold(
      body: Column(
        children: [
          HomeMenuBar(ref: ref),
          _mainArea(),
        ],),
    );
  }

  Widget _mainArea(){
    return Expanded(
      child: Container(
        color: ConstantsColors.commonBaseColor,
        child: Row(
          children: [
            ImageTabView(),
            // _sidePallet()
          ],),
      ),
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