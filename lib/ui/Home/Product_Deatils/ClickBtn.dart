import 'package:elevatetask1/core/AppColors.dart';
import 'package:flutter/material.dart';

class BtnClick extends StatelessWidget {
   BtnClick({required this.icon,required this.color});
IconData icon;
Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      child: CircleAvatar(

        backgroundColor: color,
        child: Icon(icon),
      ),
    );
  }
}
