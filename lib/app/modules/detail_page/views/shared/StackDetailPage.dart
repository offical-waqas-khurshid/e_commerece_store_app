import 'package:flutter/material.dart';

class StackDetailPage extends StatelessWidget {
  final Function()? onTap;
  String? image;

  StackDetailPage({this.image,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 450,
          child: Image.asset(image!, fit: BoxFit.fill,),
        ),
        // const Positioned(
        //     right: 40.0, top: 65.5, child: Icon(Icons.heart_broken_outlined, color: Colors.white,)),
      ],
    );
  }
}
