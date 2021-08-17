import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryl/config/app_strings.dart';
import 'package:groceryl/config/pallate.dart';
import 'package:flutter/material.dart';
import 'package:groceryl/features/dashboard/components/banner_item.dart';
import 'package:groceryl/features/dashboard/components/best_deals_item.dart';

class Body extends StatelessWidget{

  final categoryImages = ['assets/images/sayur.png','assets/images/sayur.png','assets/images/sayur.png','assets/images/sayur.png',
    'assets/images/sayur.png'];
  final categoryNames = ['Vegetables','Tomato','Onion','Spices',
    'Cooking'];
  final categoryColor = [0xFFF7E4D3,0xFFD3F7DF,0xFFF7D3EA,0xFFEFF7D3,
    0xFFD3E6F7];

  @override
  Widget build(BuildContext context) {
   return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, top: 47.h, right: 24.w),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Text("Hello,",
                   style: GoogleFonts.montserrat(
                     fontSize: 16.sp,
                     fontWeight: FontWeight.w400,
                     color: wTitleTextColor
                   ),
                  ),
                  SizedBox(width: 5.w,),
                  Text("Kluivert",
                    style: GoogleFonts.montserrat(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: wPrimaryColor
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: SizedBox(
                      width: 194.w,
                      height: 40.h,
                      child: Text(titleHeader,
                        style: GoogleFonts.montserrat(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: wTitleTextColor
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: wPrimaryColorLight,
                      ),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                      child: SvgPicture.asset('assets/icons/bell.svg') ,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40.w,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          contentPadding: EdgeInsets.all(10.0),
                          hintStyle: GoogleFonts.montserrat(
                            color: wItemsColor.withOpacity(0.30),
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp
                          ),
                          prefixIcon: Icon(Icons.search,color: wItemsColor.withOpacity(0.30),),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: wPrimaryColorLight,
                              width: 1.w
                            ),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r),
                            borderSide: BorderSide(
                              color: wPrimaryColorLight,
                              width: 1.w,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w,),
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: wPrimaryColorLight,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                      child: SvgPicture.asset('assets/icons/query.svg') ,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h,),
              Container(
                height: 16.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                    Text("Category",
                      style: GoogleFonts.montserrat(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: wTitleTextColor
                      ),
                    ),
                    Text("Show All",
                      style: GoogleFonts.montserrat(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: wTitleTextColor
                      ),
                    ),
                  ],
                ),
              ),
               SizedBox(height: 10.h,),
               Container(
                 width: 327.w,
                 height: 120.h,
                 child: ListView.separated(
                   itemCount: 5,
                   separatorBuilder: (BuildContext context, int index) {
                     return SizedBox(
                       width: 10.w,
                     );
                   },
                   itemBuilder: (context, index){
                     return MyCategory(categoryImages[index], categoryNames[index], categoryColor[index]);
                   },
                   scrollDirection: Axis.horizontal,
                 ),
               ),
              SizedBox(height: 15.h,),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Best Deal",
                  style: GoogleFonts.montserrat(
                      color: wTitleTextColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
               BannerItem(),
              SizedBox(height: 15.h,),
              Container(
                height: 16.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                    Text("Best Price",
                      style: GoogleFonts.montserrat(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: wTitleTextColor
                      ),
                    ),
                    Text("Show All",
                      style: GoogleFonts.montserrat(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: wTitleTextColor
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,),
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext ctx, index) {
                    return BestDealsItem();
                    }
                  ),
            ],   
          ),
        ),
      ),
   );
  }

  Container MyCategory(String imageVal, String itemName, int cardColor) {
    return Container(
      width: 80.w,
      height: 80.h,
      child: Column(
        children: [
          Card(
            color: Color(cardColor),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Wrap(
              children: [
                Image.asset(imageVal,width: 70.w, height: 70.h, )
              ],
            ),
          ),
          SizedBox(height: 4.h,),
          Center(
            child: Text(
              itemName,
              style: GoogleFonts.montserrat(
                color: wTitleTextColor,
                fontSize: 8.sp,
                fontWeight: FontWeight.w400
              ),
            ),
          )
        ],
      ),
    );
  }


}