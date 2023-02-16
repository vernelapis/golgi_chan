import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:golgi_chan/Widgets/Common/button_tool.dart';
import 'package:golgi_chan/Widgets/tool/cropTool.dart';
import 'package:golgi_chan/Widgets/tool/eraser.dart';
import 'package:golgi_chan/constants/color.dart';

import '../../enums/tools.dart';
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
                  tool: Tools.eraser, 
                  onTap: (){}, ),
                ToolButton(
                  tool: Tools.cropTool,
                  onTap: (){}, ),
              ],),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                  ),
                  right: BorderSide(
                    color: Colors.black,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                )
              ),
              child: _switchChild(ref.watch(toolPalletProvider)),
            ),
          ),
      ],),
    );
  }

  Widget _switchChild(Tools tool){
    switch (tool) {
      case Tools.none:
        return const Center(child: Text("Select tool !"),);
      case Tools.eraser:
        return EraserToolWidget();
      case Tools.cropTool:
        return CropToolWidget();
    }
  }
}