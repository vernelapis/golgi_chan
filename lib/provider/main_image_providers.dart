

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:golgi_chan/dataType/image_data_set.dart';
import 'package:tabbed_view/tabbed_view.dart';

final imageTabProvider = StateProvider((ref) => [
  TabData(text: "Tab 1", closable: false),
  TabData(text: "Tab 2"),
  TabData(text: "Tab 3",

  ),
  TabData(text: "TAb4"),
]);

  // ImageDataSet(
  //     image: ,
  //     arrowSettings: arrowSettings,
  //     graphSettings: graphSettings)]);

