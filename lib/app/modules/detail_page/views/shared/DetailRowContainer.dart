import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailRowContainer extends StatelessWidget {
  const DetailRowContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstDemo = Get.arguments;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              '${firstDemo[0]}',
              style: GoogleFonts.raleway(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '${firstDemo[1]}',
              style: GoogleFonts.raleway(
                  color: AppColors.primaryLabelColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            '\$${firstDemo[2]}',
            style: GoogleFonts.poppins(
                color: AppColors.secondary,
                fontWeight: FontWeight.w500,
                fontSize: 24),
          ),
        ),
      ],
    );
  }
}
