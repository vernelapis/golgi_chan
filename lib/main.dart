import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:golgi_chan/page/home/home.dart';
import 'package:window_size/window_size.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  setWindowFrame(const Rect.fromLTWH(30, 30, 1800, 1000));
  setWindowMinSize(const Size(800, 1000));

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}