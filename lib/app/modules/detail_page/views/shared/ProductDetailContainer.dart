import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';

class ProductDetailContainer extends StatelessWidget {
  const ProductDetailContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      child: const Text(
        'Call it a treasure chest or a mini portable world, handbags are indispensable in daily life',
        style: TextStyle(
            color: AppColors.primaryLabelColor,
            fontSize: 14,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}