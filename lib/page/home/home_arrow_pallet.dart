import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../gen/assets.gen.dart';

class HomeArrowPallet extends ConsumerWidget {
  const HomeArrowPallet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),),
    );
  }

}