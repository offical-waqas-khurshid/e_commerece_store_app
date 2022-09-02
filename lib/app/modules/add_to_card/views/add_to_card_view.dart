import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/appColors.dart';
import '../controllers/add_to_card_controller.dart';

class AddToCardView extends GetView<AddToCardController> {
  const AddToCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.secondary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Cart'),
            SizedBox(
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15.0, bottom: 15.0),
              child: Container(
                height: 200,
                width: 360,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Card(
                  color: Colors.white70,
                  elevation: 20,
                  shadowColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 110,
                                  width: 110,
                                  child: Card(
                                    color: Colors.white70,
                                    elevation: 2,
                                    child: Image.asset(
                                      'assets/images/red.png',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text('size',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                          ],
                        ),
                        // const Padding(padding: EdgeInsets.only(left: 1)),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Title item',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500, fontSize: 14)),
                              Text('subTitle item',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500, fontSize: 14)),
                              Text('Price item',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600, fontSize: 16)),
                              Row(
                                children: [
                                      Text('Free Shipping',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: AppColors.secondary)),
                                      Row(
                                        children: [
                                          const Padding(
                                              padding: EdgeInsets.only(left: 40)),
                                          Container(
                                            width: 25.0,
                                            child: FloatingActionButton(
                                              elevation: 5,
                                              backgroundColor:
                                                  AppColors.secondary,
                                              onPressed: () {},
                                              child: const Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                              padding: EdgeInsets.only(left: 10)),
                                          Text('1',
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: AppColors.primary)),
                                          const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10)),
                                          Container(
                                            width: 25.0,
                                            child: FloatingActionButton(
                                              backgroundColor:
                                                  AppColors.secondary,
                                              onPressed: () {},
                                              child: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        elevation: 5,
                                        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 30, right: 30),
                                        side: const BorderSide(width: 1.0, style: BorderStyle.solid, color: AppColors.primaryLabelColor),
                                      ),
                                        onPressed: () {}, child: Text('Edit', style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.primary))),
                                    const SizedBox( width: 10,),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                           elevation: 5,
                                          side: const BorderSide(width: 1.0, style: BorderStyle.solid, color: AppColors.primaryLabelColor),
                                        ),
                                        onPressed: () {}, child: Text('Remove',style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.primary))),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 15.0,)),
            Text('Price Details',style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 16)),
            // const Padding(
            //     padding: EdgeInsets.only(left: 15.0, bottom: 15.0)),
             Container(
              height: 200,
              width: 360,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Card(
                color: Colors.white70,
                elevation: 20,
                shadowColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 5)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 110,
                                width: 110,
                                child: Card(
                                  color: Colors.white70,
                                  elevation: 2,
                                  child: Image.asset(
                                    'assets/images/red.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text('size',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 14)),
                        ],
                      ),
                      // const Padding(padding: EdgeInsets.only(left: 1)),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Title item',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                            Text('subTitle item',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 14)),
                            Text('Price item',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 16)),
                            Row(
                              children: [
                                Text('Free Shipping',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: AppColors.secondary)),
                                Row(
                                  children: [
                                    const Padding(
                                        padding: EdgeInsets.only(left: 40)),
                                    Container(
                                      width: 25.0,
                                      child: FloatingActionButton(
                                        elevation: 5,
                                        backgroundColor:
                                        AppColors.secondary,
                                        onPressed: () {},
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(left: 10)),
                                    Text('1',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: AppColors.primary)),
                                    const Padding(
                                        padding:
                                        EdgeInsets.only(right: 10)),
                                    Container(
                                      width: 25.0,
                                      child: FloatingActionButton(
                                        backgroundColor:
                                        AppColors.secondary,
                                        onPressed: () {},
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        elevation: 5,
                                        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 30, right: 30),
                                        side: const BorderSide(width: 1.0, style: BorderStyle.solid, color: AppColors.primaryLabelColor),
                                      ),
                                      onPressed: () {}, child: Text('Edit', style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.primary))),
                                  const SizedBox( width: 10,),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        elevation: 5,
                                        side: const BorderSide(width: 1.0, style: BorderStyle.solid, color: AppColors.primaryLabelColor),
                                      ),
                                      onPressed: () {}, child: Text('Remove',style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.primary))),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


          ],
        ),

      ),
    );
  }
}
