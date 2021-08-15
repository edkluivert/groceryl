import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryl/config/app_strings.dart';
import 'package:groceryl/config/pallate.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget{
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
            ],   
          ),
        ),
      ),
   );
  }

}