import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryl/config/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceryl/config/pallate.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: headerHeight,
      color: Colors.white,
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning!",
                style: GoogleFonts.montserrat(
                  color: Colors.black54,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400
                ),
              ),
              Text(
                "Ed kluivert",
                style: GoogleFonts.montserrat(
                    color: wPrimaryColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400
                ),
              )
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage("assets/images/photo_placeholder.jpg"),
          )
        ],
      ),
    );
  }
}