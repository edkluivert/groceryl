import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryl/config/custom_icons/groceryl_icons.dart';
import 'package:groceryl/config/pallate.dart';
import 'package:groceryl/features/cart/view/cart_screen.dart';
import 'package:groceryl/features/category/view/category_screen.dart';
import 'package:groceryl/features/chat/view/chat_screen.dart';
import 'package:groceryl/features/dashboard/view/dashboard_screen.dart';
import 'package:groceryl/features/home_screen/controller/home_controller.dart';
import 'package:groceryl/features/profile/view/profile_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeScreen extends StatelessWidget{

  final _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                DashboardScreen(),
                CategoryScreen(),
                ChatScreen(),
                ProfileScreen(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: wTitleTextColor,
            selectedItemColor: wPrimaryColor,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: controller.tabIndex == 0 ? wPrimaryColorLight : Colors.transparent,
                      borderRadius: BorderRadius.circular(15.r)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 4.h),
                    child: Column(
                      children: [
                        Icon(Groceryl.dashboard),
                        SizedBox(height: 2.h,),
                        Container(
                          width: 4.w,
                          height: 4.h,
                          // margin: EdgeInsets.all(100.0),
                          decoration: BoxDecoration(
                              color: controller.tabIndex == 0 ? wPrimaryColor : Colors.transparent,
                              shape: BoxShape.circle
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: controller.tabIndex == 1 ? wPrimaryColorLight : Colors.transparent,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Padding(
                  padding:EdgeInsets.symmetric(horizontal: 8.w,vertical: 4.h),
                  child: Column(
                    children: [
                      Icon(Groceryl.category),
                      SizedBox(height: 2.h,),
                      Container(
                        width: 4.w,
                        height: 4.h, // margin: EdgeInsets.all(100.0),
                        decoration: BoxDecoration(
                            color: controller.tabIndex == 1 ? wPrimaryColor : Colors.transparent,
                            shape: BoxShape.circle
                        ),
                      )
                    ],
                  ),
                )),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: controller.tabIndex == 2 ? wPrimaryColorLight : Colors.transparent,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 4.h),
                  child: Column(
                    children: [
                      Icon(Groceryl.chat),
                      SizedBox(height: 2.h,),
                      Container(
                        width: 4.w,
                        height: 4.h,
                        // margin: EdgeInsets.all(100.0),
                        decoration: BoxDecoration(
                            color: controller.tabIndex == 2 ? wPrimaryColor : Colors.transparent,
                            shape: BoxShape.circle
                        ),
                      )
                    ],
                  ),
                )),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: controller.tabIndex == 3 ? wPrimaryColorLight : Colors.transparent,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 4.h),
                  child: Column(
                    children: [
                      Icon(Groceryl.user),
                      SizedBox(height: 2.h,),
                      Container(
                        width: 4.w,
                        height: 4.h,
                       // margin: EdgeInsets.all(100.0),
                        decoration: BoxDecoration(
                            color: controller.tabIndex == 3 ? wPrimaryColor : Colors.transparent,
                            shape: BoxShape.circle
                        ),
                      )
                    ],
                  ),
                )),
                label: 'User',
              ),
            ],
          ),
        );
      },
    );

  }



}