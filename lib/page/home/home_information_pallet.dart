import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeInformationPallet extends ConsumerWidget {
  const HomeInformationPallet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
    );
  }

}