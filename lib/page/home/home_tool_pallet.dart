import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:golgi_chan/Widgets/Common/button_tool.dart';

import '../../gen/assets.gen.dart';

class HomeToolPallet extends ConsumerWidget {
  const HomeToolPallet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),),
      padding: const EdgeInsets.all(2),
      child: Row(
        children: [
          Container(
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ToolButton(
                    text: "消しゴム",
                    image: Assets.image.eraser.image(fit: BoxFit.fill),
                    ref: ref,
                    onTap: (){}),
                ToolButton(
                    text: "エリア切り取り",
                    image: Assets.image.cropTool.image(fit: BoxFit.fill),
                    ref: ref,
                    onTap: (){}),
              ],),
          ),
          const SizedBox(width: 5,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),),
            ),
          ),
      ],),
    );
  }

}