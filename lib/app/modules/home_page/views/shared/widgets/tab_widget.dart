import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  String? name;
  double? widthOfLine;
  Function()? onTap;
  Color? textColor;
  Color? lineColor;


  TabWidget({
    this.onTap,this.name,this.textColor,this.lineColor,this.widthOfLine
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Text("$name",style: TextStyle(color: textColor,fontSize: 16,fontWeight: FontWeight.w500 ),),
          Container(height: 4,width: widthOfLine,color: lineColor,)
        ],
      ),
    );
  }
}