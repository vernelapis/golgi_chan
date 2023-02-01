import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'home_widgets.dart';

final CounterProvider = StateProvider((ref) => 0);

class MyHomePage extends ConsumerWidget{
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref){
    return Scaffold(
      body: Column(children: [
        HomeWidgets().homeMenuBar(ref),
      ],),
    );
  }
}