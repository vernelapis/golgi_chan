
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:golgi_chan/Widgets/Common/button_menu.dart';
import 'package:golgi_chan/page/main_image/image_tab_view.dart';
import 'package:golgi_chan/provider/main_image_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tabbed_view/tabbed_view.dart';

Widget fileMenuDialog(BuildContext context, WidgetRef ref){
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      MenuButton(
          text: "画像取り込み",
          shortCut: "test",
          onTap: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles(lockParentWindow: true);
            if (result != null && result.files.isNotEmpty) {
              final file = File(result.files.single.path!);
              if (file.existsSync()) {
                String fileName = result.files.first.name;
                ref.read(preImageTabProvider.notifier).state.add(
                  ImageTab(
                      text: fileName,
                      content: Image.file(file))
                );
                ref.read(preTabNumProvider.notifier).state++;
              } else {
                print('File does not exist.');
              }
            } else {
              print('User canceled the picker.');
            }
          }),
      MenuButton(
          text: "画像取り込み",
          onTap: (){}),
      MenuButton(
          text: "画像取り込み",
          onTap: (){}),
      MenuButton(
          text: "画像取り込み",
          onTap: (){}),
      MenuButton(
          text: "画像取り込み",
          onTap: (){}),
    ],);
}