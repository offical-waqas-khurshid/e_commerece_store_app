import 'package:flutter/material.dart';

class SizeContainer extends StatelessWidget {

  String? titleOfSize;
  Function()? onTap;
  Color borderColor;
  Color? textColor;
  Color? backgroundColor;

  SizeContainer({this.onTap, this.titleOfSize, this.backgroundColor, this.textColor, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 3, bottom: 3),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor, width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Container(
              child:  Text('$titleOfSize', style: TextStyle(color: textColor),),
            ),
          ],
        ),
      ),
    );
  }
}