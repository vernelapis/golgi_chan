import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:golgi_chan/constants/color.dart';

class ToolButton extends StatelessWidget{
  final String text;
  final Image image;
  final WidgetRef ref;
  final Function onTap;

  const ToolButton({super.key, required this.text, required this.image, required this.ref, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        height: 35,
        width: 150,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 5,),
            SizedBox(height: 30,width: 30,child: image,),
            const SizedBox(width: 10,),
            Text(text,),
          ],
        ),
      ),
    );
  }
}