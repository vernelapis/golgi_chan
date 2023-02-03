import 'dart:ui';
import 'package:golgi_chan/dataType/arrow_settings.dart';
import 'package:golgi_chan/dataType/graph_settings.dart';

class ImageDataSet {
  final Image image;
  final ArrowSettings arrowSettings;
  final GraphSettings graphSettings;

  const ImageDataSet ({
    required this.image,
    required this.arrowSettings,
    required this.graphSettings,
  });
}