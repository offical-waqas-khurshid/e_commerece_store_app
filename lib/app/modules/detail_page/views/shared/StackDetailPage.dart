import 'package:flutter/material.dart';

class StackDetailPage extends StatelessWidget {
  const StackDetailPage({
    Key? key, required List<Widget> children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 8),
          width: 300,
          height: 330,
          child: Image.asset('assets/images/brown_bg_lg.png'),
        ),
        const Positioned(
            top: 30.5, left: 20.0, child: Icon(Icons.arrow_back)),
        const Positioned(
            right: 20.0,
            top: 30.5,
            child: Icon(Icons.heart_broken_outlined)),
      ],
    );
  }
}