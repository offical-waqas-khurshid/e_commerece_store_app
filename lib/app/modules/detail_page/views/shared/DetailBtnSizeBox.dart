import 'package:e_commerece_store_app/app/models/Products.dart';
import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';
class DetailBtnSizeBox extends StatelessWidget  {

  int? id;
  Products? product;
  Function() onPress;
  DetailBtnSizeBox(this.product,  this.onPress);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: ElevatedButton(
            onPressed: onPress,
            style: ElevatedButton.styleFrom(
                elevation: 10,
                backgroundColor: AppColors.secondary,
                padding: const EdgeInsets.only(
                    top: 15.0, bottom: 15.0, left: 50.0, right: 50.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: const Text(
              'Add to cart',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            )),
      ),
    );
}
  }
