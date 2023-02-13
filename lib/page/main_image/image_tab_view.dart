import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:golgi_chan/provider/main_image_providers.dart';
import 'package:tabbed_view/tabbed_view.dart';

final selectTabProvider = StateProvider<int>((ref) => -1);

class ImageTabView extends ConsumerWidget {
  const ImageTabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    List<TabData> localTabs = ref.watch(preImageTabProvider);

    // タブ数変化時の処理
    ref.listen(preTabNumProvider, (previous, next) {
      var t = ref.read(preImageTabProvider);
      ref.read(preImageTabProvider.notifier).state = [...t];
    });

    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(2),
        color: Colors.black,
        child: localTabs.isEmpty
            ? const Center(child: Text("Please import an image.",style: TextStyle(color: Colors.white),))
            : TabbedViewTheme(
          data: TabbedViewThemeData.dark(),
          child: TabbedView(
              controller: TabbedViewController(localTabs),
              contentBuilder: (BuildContext context, int tabIndex) {
                TabData tab = localTabs[tabIndex];
                if (tab.content == null){
                  String tabText = tab.text;
                  return Center(child: Text('Content $tabText'));
                } else {
                  return tab.content!;
                }},
            onTabClose: (index, tabData){
                ref.read(preTabNumProvider.notifier).state--;
            },
            onTabSelection: (index){
                if (index != null){
                  ref.read(selectTabProvider.notifier).state = index;debugPrint("$index");}
          },),
        ),
      )
    );
  }
}

