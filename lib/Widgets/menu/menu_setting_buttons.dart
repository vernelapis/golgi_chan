import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menu_bar/menu_bar.dart';

SubMenu menuSettingButtons(){
  return SubMenu(
    menuItems: [
      MenuButton(
        onTap: () {},
        text: const Text('Undo'),
        shortcutText: 'Ctrl+Z',
      ),
      MenuButton(
        onTap: () {},
        text: const Text('Redo'),
        shortcutText: 'Ctrl+Y',
      ),
      const MenuDivider(),
      MenuButton(
        onTap: () {},
        text: const Text('Cut'),
        shortcutText: 'Ctrl+X',
      ),
      MenuButton(
        onTap: () {},
        text: const Text('Copy'),
        shortcutText: 'Ctrl+C',
      ),
      MenuButton(
        onTap: () {},
        text: const Text('Paste'),
        shortcutText: 'Ctrl+V',
      ),
      const MenuDivider(),
      MenuButton(
        onTap: () {},
        text: const Text('Find'),
        shortcutText: 'Ctrl+F',
      ),
    ],
  );
}