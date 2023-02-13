import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tabbed_view/tabbed_view.dart';

final preTabNumProvider = StateProvider((ref) => 0);
final preImageTabProvider = StateProvider<List<ImageTab>>((ref) => []);

class ImageTab extends TabData {
  ImageTab({required super.text, required super.content, super.closable}):super(keepAlive: true);
}