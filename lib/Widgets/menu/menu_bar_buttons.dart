import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/src/consumer.dart';
import 'package:golgi_chan/Widgets/menu/menu_file_buttons.dart';
import 'package:golgi_chan/Widgets/menu/menu_help_buttons.dart';
import 'package:golgi_chan/Widgets/menu/menu_setting_buttons.dart';
import 'package:menu_bar/menu_bar.dart';

List<BarButton> menuBarButtons(WidgetRef ref) {
  return [
    BarButton(
      text: const Text(
        'File',
        style: TextStyle(color: Colors.white),
      ),
      submenu: menuFileButtons(ref)
    ),
    BarButton(
      text: const Text(
        'Edit',
        style: TextStyle(color: Colors.white),
      ),
      submenu: menuSettingButtons(),
    ),
    BarButton(
      text: const Text(
        'Help',
        style: TextStyle(color: Colors.white),
      ),
      submenu: menuHelpButtons(),
    ),
  ];
}