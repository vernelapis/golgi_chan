import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menu_bar/menu_bar.dart';

SubMenu menuHelpButtons(){
  return SubMenu(
    menuItems: [
      MenuButton(
        onTap: () {},
        text: const Text('Check for updates'),
      ),
      const MenuDivider(),
      MenuButton(
        onTap: () {},
        text: const Text('View License'),
      ),
      const MenuDivider(),
      MenuButton(
        onTap: () {},
        icon: const Icon(Icons.info),
        text: const Text('About'),
      ),
    ],
  );
}