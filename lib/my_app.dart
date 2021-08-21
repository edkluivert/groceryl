import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:groceryl/config/pallate.dart';
import 'package:groceryl/features/home_screen/view/home_screen.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    const SystemUiOverlayStyle dark = SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: wPrimaryColor,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: wPrimaryColor,
        statusBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(dark);
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