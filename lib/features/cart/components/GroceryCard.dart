import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryl/config/constants.dart';
import 'package:groceryl/config/pallate.dart';
import 'package:groceryl/core/model/grocery.dart';
import 'package:groceryl/features/cart/components/fav_btn.dart';
import 'package:groceryl/features/cart/components/price.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroceryCard extends StatelessWidget {
  const GroceryCard({
    Key? key,
    required this.grocery,
    required this.press,
  }) : super(key: key);

  final Grocery grocery;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
          color: Color(0xFFF7F7F7),
          borderRadius: const BorderRadius.all(
            Radius.circular(defaultPadding * 1.25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: grocery.title!,
              child: Image.asset(grocery.image!,height: 100.h,),
            ),
            Text(
              grocery.title!,
              style: GoogleFonts.montserrat(
                  color: Colors.black54,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600
              ),
            ),
            Text(
              "Fruits",
              style: GoogleFonts.montserrat(
                  color: Colors.black54,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Price(amount: "50.00"),
                FavBtn(),
              ],
            ),
           SizedBox(height: 40.h,),
            Center(
              child: SizedBox(
                width: 120.w,
                height: 30.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: wPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r)
                      )
                  ),
                  onPressed: () {},
                  child: Text("Add to cart",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp
                    ),
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