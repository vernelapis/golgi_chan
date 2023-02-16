import 'package:flutter/src/widgets/image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../gen/assets.gen.dart';

final toolPalletProvider = StateProvider((ref) => Tools.none);

enum Tools {
  none,
  eraser(text: "消しゴム"),
  cropTool(text: "エリア切り取り");

  const Tools({this.text});

  final String? text;

  Image? get image {
    switch (this) {
      case Tools.none:
        return null;
      case Tools.eraser:
        return Assets.image.eraser.image();
      case Tools.cropTool:
        return Assets.image.cropTool.image();
    }
  }
}