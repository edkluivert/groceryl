import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryl/config/pallate.dart';

class BestDealsItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154.w,
      height: 250.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: wSearchBackground,
          width: 1.w
        )
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.w,top: 10.h, right: 10.w),
        child: Column(
         // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 112.h,
              width: 134.w,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.2,
                    0.7,
                    0.2
                  ],
                  colors: [
                    wBestPricePicBgColor,
                    Colors.white.withOpacity(0.100),
                    wBestPricePicBgColor.withOpacity(0.3),
                  ],
                ),
                  borderRadius: BorderRadius.circular(15.r),
              ),
              child: Image.asset('assets/images/chicken.png',width: 167.w, height: 112.h,),
            ),
            SizedBox(height:11.h),
            Container(
              width: 134.w,
              height: 27.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chicken",
                        maxLines: 2,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                         fontSize: 14.sp
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "1 Kilograms",
                        maxLines: 2,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 6.sp
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(width: 15.w,),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Text(
                      "NG.1500",
                      maxLines: 2,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                          fontSize: 14.sp
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}