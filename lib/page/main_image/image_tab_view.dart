import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:golgi_chan/provider/main_image_providers.dart';
import 'package:tabbed_view/tabbed_view.dart';

class ImageTabView extends ConsumerWidget {
  const ImageTabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(2),
        color: Colors.black,
        child: TabbedViewTheme(
          data: TabbedViewThemeData.dark(),
          child: TabbedView(
              controller: TabbedViewController(ref.watch(imageTabProvider)),
              contentBuilder: (BuildContext context, int tabIndex) {
                String i = ref.read(imageTabProvider)[tabIndex].text;
                return Center(child: Text('Content $i'));
                },),
        ),
      )
    );
  }
}