import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:golgi_chan/constants/color.dart';

class MenuButton extends StatelessWidget{
  final String text;
  final Image image;
  final WidgetRef ref;
  final Function onTap;

  const MenuButton({super.key, required this.text, required this.image, required this.ref, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 30,
        width: 100,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,width: 20,child: image,),
              const SizedBox(width: 10,),
              Text(text,),
            ],
          ),
        ),
      ),
    );
  }
}