import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryl/config/pallate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceryl/features/sign_up/components/sign_up_form.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 12.h),
        child: Column(
          children: [
            Container(
              height: 237.h,
              width: double.infinity,
              color: wPrimaryColor,
              child: Row(
               //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h,),
                  SvgPicture.asset('assets/images/sign_up.svg', width: 300.w,height: 250.h,),
                  //SizedBox(width: 15.w,),
                  Padding(
                    padding: EdgeInsets.only(top: 44.h),
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/images/bubble_hello.svg',width: 70.w, height: 69.h,),
                        SizedBox(
                          height: 68.h,
                          child: Text("Get Started!",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
            height: 800.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(10.r),
              topLeft: Radius.circular(10.r)
              ),
            ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 36.w),
                child: Column(
                  children: [
                    SizedBox(height: 20.h,),
                    Center(
                      child: Text("Sign Up",
                        style: GoogleFonts.montserrat(
                            color: Color(0xFFE58816),
                            fontSize: 34.sp,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    SignUpForm(),

                  ],
                ),
              ),
             ),

          ],
        ),
      ),
    ),
    );
  }

}