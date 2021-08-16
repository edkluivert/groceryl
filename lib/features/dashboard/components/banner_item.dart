import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryl/config/pallate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200.h,
        ),
        Positioned(
          top: 20.h,
          child: Stack(
            children: [
              Container(
                width: 327.w,
                height: 150.h,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [
                        0.3,
                        0.9
                      ],
                      colors: [
                        wBannerDarkColor,
                        wBannerLightColor,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(
                        color: wBannerDarkColor,
                        width: 1.w
                    )
                ),

              ),
              Positioned(
                top: 20.h,
                left: 15.w,
                child: Text("#SimpleKitchen",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 10.sp
                  ),
                ),
              ),
              Positioned(
                top: 59.h,
                left: 15.w,
                child: SizedBox(
                  width: 109.w,
                  height: 60.h,
                  child: Text("Soup Package",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 24.sp
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 116.h,
                left: 15.w,
                child: SizedBox(
                  width: 144.w,
                  height: 14.h,
                  child: Text("No need to think about ingredients anymore, let's find your menu today",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 6.sp
                    ),
                  ),
                ),
              ),
             Positioned(
                 left: 99.w,
                 bottom: 1.h,
                 //top: 0.2,
                 child: Container(
                   //margin: EdgeInsets.only(bottom: 10.h),
                     width: 228.w,
                     height: 152.h,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20.r),
                       image: DecorationImage(
                         image: AssetImage('assets/images/banner_bg.png')
                       ),
                       )
                     ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 110.w,
         //top: 10.h,
          bottom: 25.h,
          child: SizedBox(
           width: 204.w,height: 206.h,
              child: Image.asset('assets/images/soup.png')),

        )
      ],
    );
  }

}