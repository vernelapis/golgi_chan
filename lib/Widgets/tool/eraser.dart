import 'package:flutter/cupertino.dart';
import 'package:golgi_chan/constants/color.dart';

class EraserToolWidget extends StatelessWidget{
  const EraserToolWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: ConstantsColors.selectToolColor,
        child: const Center(child: Text("Eraser tool !"),));
  }

}