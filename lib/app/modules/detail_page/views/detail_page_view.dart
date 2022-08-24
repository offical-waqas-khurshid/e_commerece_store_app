import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/detail_page_controller.dart';

class DetailPageView extends GetView<DetailPageController> {
  const DetailPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
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
              ),
              Container(
                height: 423,
                width: 375,
                child: Row(
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
                       const SizedBox(height: 5,),
                        Text('( With solo loop )',style: GoogleFonts.raleway(
                            color: AppColors.primaryLabelColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),),
                      ],
                    ),
                    Column(
                      children: [
                        Text('\$799',style: GoogleFonts.poppins(
                            color: AppColors.secondary,
                            fontWeight: FontWeight.w500,
                            fontSize: 24),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
