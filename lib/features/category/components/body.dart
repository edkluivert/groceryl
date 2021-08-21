import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryl/config/pallate.dart';
import 'package:groceryl/features/dashboard/components/grocery_category_item.dart';

class Body extends StatelessWidget{

  final categoryImages = ['assets/images/sayur.png','assets/images/fruit.png','assets/images/spice.png',
    'assets/images/ingredient.png',
    'assets/images/bread.png','assets/images/sayur.png'];
  final categoryNames = ['Vegetables','Fruits','Spices','Ingredients',
    'Side Dishes', 'Broccoli'];
  final categoryColor = [0xFFF7E4D3,0xFFD3F7DF,0xFFF7D3EA,0xFFEFF7D3,
    0xFFD3E6F7,0xFFF7E4D3];

  @override
  Widget build(BuildContext context) {
   return SafeArea(child: SingleChildScrollView(
     child:Column(
       children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(height: 53.h,),
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
                SizedBox(height: 20.h,),
                GroceryCategoryItem(),
              ],
            ),
          ),
           SizedBox(height: 10.h,),
           Padding(padding: EdgeInsets.symmetric(horizontal: 29.w) ,
               child: GridView.builder(
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     crossAxisSpacing: 15,
                     mainAxisSpacing: 15,),
                   itemCount: 6,
                   shrinkWrap: true,
                   scrollDirection: Axis.vertical,
                   physics: NeverScrollableScrollPhysics(),
                   itemBuilder: (BuildContext ctx, index) {
                     return MyGroceryCategory(categoryImages[index], categoryNames[index],
                         categoryColor[index]);
                   }
               ),
           ),
       ],
     ) ,
    ),
   );
  }

  Container MyGroceryCategory(String imageVal, String itemName, int cardColor) {
    return Container(
      width: 180.w,
      height: 180.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Color(cardColor),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.h, left: 1.5.w, right: 1.5.w),
            child: Image.asset(imageVal,width: 156.w,height: 104.h,),
          ),
          SizedBox(height: 12.h,),
          Center(
            child: Text(
              itemName,
              style: GoogleFonts.montserrat(
                  color: wTitleTextColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        ],
      ),
    );
  }

}
