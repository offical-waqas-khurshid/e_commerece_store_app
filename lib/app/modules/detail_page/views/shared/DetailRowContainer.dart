import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailRowContainer extends StatelessWidget {
  const DetailRowContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Mulberry Clutch',
              style: GoogleFonts.raleway(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '( With solo loop )',
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
            '\$799',
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