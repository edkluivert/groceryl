import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:groceryl/features/home_screen/view/home_screen.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: Colors.white, // status bar color
      statusBarBrightness: Brightness.dark,//status bar brightness
      statusBarIconBrightness:Brightness.dark , //status barIcon Brightness

    ));
    return ScreenUtilInit(
      designSize: Size(375,812),
      builder: ()=> GetMaterialApp(
          //title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HomeScreen(),
          debugShowCheckedModeBanner: false,
      ),
    );
  }
}