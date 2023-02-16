import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:golgi_chan/constants/color.dart';
import 'package:golgi_chan/enums/tools.dart';

class ToolButton extends ConsumerWidget{
  final Tools tool;
  final Function onTap;

  const ToolButton({super.key, required this.tool, required this.onTap,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: (){
        (ref.read(toolPalletProvider) == tool)
            ? ref.read(toolPalletProvider.notifier).state = Tools.none
            : ref.read(toolPalletProvider.notifier).state = tool;
        onTap();
      },
      child: Container(
        height: 37,
        width: 150,
        decoration: (ref.watch(toolPalletProvider) == tool)
            ? _selected()
            : _notSelected(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 5,),
            SizedBox(height: 30,width: 30,child: tool.image,),
            const SizedBox(width: 10,),
            Text(tool.text!,textAlign: TextAlign.start,),
          ],
        ),
      ),
    );
  }

  BoxDecoration _selected(){
    return const BoxDecoration(
      color: ConstantsColors.selectToolColor,
      border: Border(
        top: BorderSide(
          color: Colors.black,
        ),
        left: BorderSide(
          color: Colors.black,
        ),
        bottom: BorderSide(
          color: Colors.black,
        ),
      ),
    );
  }

  BoxDecoration _notSelected(){
    return BoxDecoration(
      color: ConstantsColors.commonBaseColor,
      border: Border.all(color: Colors.black),
    );
  }

}