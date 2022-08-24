import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';

class searchbar_action_of_appbar extends StatelessWidget {
  const searchbar_action_of_appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, top: 5),
      width: 320,
      height: 0,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            filled: true,
            hintStyle:
            const TextStyle(color: AppColors.primaryLabelColor),
            hintText: "Search product",
            prefixIcon: const Icon(
              Icons.search_outlined,
              color: AppColors.primary,
            ),
            fillColor: Colors.white70),
      ),
    );
  }
}