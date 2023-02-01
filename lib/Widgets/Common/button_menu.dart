import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MenuButton extends StatelessWidget{
  final String text;
  final Image? image;
  final WidgetRef ref;
  final Function onTap;

  const MenuButton({super.key, required this.text, this.image, required this.ref, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        height: 30,
        decoration: const BoxDecoration(
          boxShadow: 
        ),
        child: Center(
          child: Row(
            children: [
              Text(text,),
            ],
          ),
        ),
      ),
    );
  }
}