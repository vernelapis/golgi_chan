import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menu_bar/menu_bar.dart';

SubMenu menuFileButtons(){
  return SubMenu(
    menuItems: [
      MenuButton(
        onTap: () => print('Save'),
        text: const Text('Save'),
        shortcutText: 'Ctrl+S',
        shortcut:
        const SingleActivator(LogicalKeyboardKey.keyS, control: true),
      ),
      MenuButton(
        onTap: () {},
        text: const Text('Save as'),
        shortcutText: 'Ctrl+Shift+S',
      ),
      const MenuDivider(),
      MenuButton(
        onTap: () {},
        text: const Text('Open File'),
      ),
      MenuButton(
        onTap: () {},
        text: const Text('Open Folder'),
      ),
      const MenuDivider(),
      MenuButton(
        text: const Text('Preferences'),
        icon: const Icon(Icons.settings),
        submenu: SubMenu(
          menuItems: [
            MenuButton(
              onTap: () {},
              icon: const Icon(Icons.keyboard),
              text: const Text('Shortcuts'),
            ),
            const MenuDivider(),
            MenuButton(
              onTap: () {},
              icon: const Icon(Icons.extension),
              text: const Text('Extensions'),
            ),
            const MenuDivider(),
            MenuButton(
              icon: const Icon(Icons.looks),
              text: const Text('Change theme'),
              submenu: SubMenu(
                menuItems: [
                  MenuButton(
                    onTap: () {},
                    icon: const Icon(Icons.light_mode),
                    text: const Text('Light theme'),
                  ),
                  const MenuDivider(),
                  MenuButton(
                    onTap: () {},
                    icon: const Icon(Icons.dark_mode),
                    text: const Text('Dark theme'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      const MenuDivider(),
      MenuButton(
        onTap: () {},
        shortcutText: 'Ctrl+Q',
        text: const Text('Exit'),
        icon: const Icon(Icons.exit_to_app),
      ),
    ],
  );
}