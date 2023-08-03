import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:menu_bar/menu_bar.dart';

import '../../provider/main_image_providers.dart';

SubMenu menuFileButtons(WidgetRef ref){
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
        text: const Text('Open File'),
        onTap:() async {
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
        },
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