import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryl/config/pallate.dart';

class GroceryCategoryItem extends StatefulWidget {
  const GroceryCategoryItem({
    Key? key,
  }) : super(key: key);

  @override
  _GroceryCategoryItemState createState() => _GroceryCategoryItemState();
}

class _GroceryCategoryItemState extends State<GroceryCategoryItem> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> groceryCategories = ["All category", "Popular", "Best deal",
      "Best price", "Package"];

    return SizedBox(
      height: 26.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: groceryCategories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  this.selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  children: [
                    Text(
                      groceryCategories[index],
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: selectedIndex == index ? wTitleTextColor : wInactiveColor,
                          fontWeight: selectedIndex == index ? FontWeight.w700 : FontWeight.normal
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Container(
                      width: 8.w,
                      height: 4.h,
                      // margin: EdgeInsets.all(100.0),
                      decoration: BoxDecoration(
                          color: selectedIndex == index ? wActiveDotColor : Colors.transparent,
                        borderRadius: BorderRadius.circular(5.r)
                      ),
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }

}
