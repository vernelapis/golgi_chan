import 'package:flutter/cupertino.dart';
import 'package:flython/flython.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final flythonInstanceProvider = Provider((ref) => ReadImage());

class ReadImage extends Flython{
  static const systemVersion = 0;
  static const imageReadWindow = 1;

  Future<dynamic> sysVersionPrint() async {
    var command = {
      "cmd": systemVersion,
    };
    return await runCommand(command);
  }

  Future<dynamic> imageRead() async {
    var command = {
      "cmd": imageReadWindow,
    };
    return await runCommand(command);
  }
}