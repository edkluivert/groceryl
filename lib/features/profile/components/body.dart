import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryl/config/pallate.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SafeArea(child: SingleChildScrollView(
     child: Padding(
       padding: EdgeInsets.symmetric(horizontal: 15.w),
       child: Column(
         children: [
           SizedBox(height: 53.h,),
           Align(
             alignment: Alignment.topLeft,
             child: Text("My Profile",style: GoogleFonts.montserrat(
               fontSize: 16.sp,
               color: wTitleTextColor,
               fontWeight: FontWeight.w700

             ),),
           ),
           SizedBox(height: 10.h,),
           Row(
             children: [
               CircleAvatar(
                 backgroundImage: AssetImage('assets/images/photo_placeholder.jpg'),
                 backgroundColor: Colors.transparent,
                 radius: 30.r,
               ),
               SizedBox(width: 15.w,),
               Padding(
                 padding: EdgeInsets.only(bottom: 30.h),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Ed kluivert",style: GoogleFonts.montserrat(
                         fontSize: 16.sp,
                         color: wTitleTextColor,
                         fontWeight: FontWeight.w700

                     ),),
                     Text("edkluivert@gmail.com",style: GoogleFonts.montserrat(
                         fontSize: 10.sp,
                         color: Colors.grey,
                         fontWeight: FontWeight.w400

                     ),),
                   ],
                 ),
               ),

             ],
           ),
           SizedBox(height: 30.h,),
           ListView(
             scrollDirection: Axis.vertical,
             shrinkWrap: true,
             children: [
               Container(
                 height: 50.h,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Ed kluivert",style: GoogleFonts.montserrat(
                             fontSize: 16.sp,
                             color: wTitleTextColor,
                             fontWeight: FontWeight.w700

                         ),),
                         SizedBox(height: 2.h,),
                         Text("edkluivert@gmail.com",style: GoogleFonts.montserrat(
                             fontSize: 10.sp,
                             color: Colors.grey,
                             fontWeight: FontWeight.w400

                         ),),
                       ],
                     ),
                     SvgPicture.asset('assets/icons/right_arrow.svg', width: 20.w, height: 20.h,),
                   ],
                 ),
               ),

             ],
           ),
         ],
       ),
     ),
   ));
  }

}