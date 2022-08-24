import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridViewContainer extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subtitle;
  final double? price;

  const GridViewContainer({this.image, this.title, this.subtitle, this.price});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 157,
      color: Colors.white,
      child: Card(
        elevation: 5,
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Image.asset(
                '$image',
                   height: 110,
                   width: 160,
              ),

              Text('$title',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 16)),
              Text('$subtitle',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: AppColors.primaryLabelColor)),
              Text('\$$price',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.secondary)),
            ],
        ),
         ),
        ),
    );
  }
}