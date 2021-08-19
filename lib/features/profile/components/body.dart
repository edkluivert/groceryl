import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryl/config/pallate.dart';
import 'package:groceryl/features/cart/view/cart_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            SizedBox(
              height: 45.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "My profile",
                style: GoogleFonts.montserrat(
                    fontSize: 25.sp,
                    color: wPrimaryColor,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/photo_placeholder.jpg'),
                  backgroundColor: Colors.transparent,
                  radius: 30.r,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ed kluivert",
                        style: GoogleFonts.montserrat(
                            fontSize: 16.sp,
                            color: wTitleTextColor,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "edkluivert@gmail.com",
                        style: GoogleFonts.montserrat(
                            fontSize: 10.sp,
                            color: wPrimaryColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Column(
              children: [
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: (){
                      Get.to(CartScreen());
                    },
                   splashColor: wPrimaryColorLight,
                   // hoverColor: wPrimaryColor,
                    child: Container(
                      height: 50.h,
                     // color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Cart",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18.sp,
                                    color: wTitleTextColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                "Already have 4 items",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10.sp,
                                    color: wPrimaryColor,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                              width: 15.w,
                              height: 15.h,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: wTitleTextColor.withOpacity(0.2),
                  thickness: 1,
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: (){},
                    splashColor: wPrimaryColorLight,
                    child: Container(
                      height: 50.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shipping addresses",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18.sp,
                                    color: wTitleTextColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                "3 addresses",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10.sp,
                                    color: wPrimaryColor,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                              width: 15.w,
                              height: 15.h,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: wTitleTextColor.withOpacity(0.2),
                  thickness: 1,
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: (){},
                    splashColor: wPrimaryColorLight,
                    child: Container(
                      height: 50.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Payment methods",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18.sp,
                                    color: wTitleTextColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                "Visa ***4",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10.sp,
                                    color: wPrimaryColor,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                              width: 15.w,
                              height: 15.h,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: wTitleTextColor.withOpacity(0.2),
                  thickness: 1,
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: (){},
                    splashColor: wPrimaryColorLight,
                    child: Container(
                      height: 50.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Deliveries",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18.sp,
                                    color: wTitleTextColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                "2 items has been delivered",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10.sp,
                                    color: wPrimaryColor,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                              width: 15.w,
                              height: 15.h,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: wTitleTextColor.withOpacity(0.2),
                  thickness: 1,
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: (){},
                    splashColor: wPrimaryColorLight,
                    child: Container(
                      height: 50.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Settings",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18.sp,
                                    color: wTitleTextColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                "Notifications, password",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10.sp,
                                    color: wPrimaryColor,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                              width: 15.w,
                              height: 15.h,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: wTitleTextColor.withOpacity(0.2),
                  thickness: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
