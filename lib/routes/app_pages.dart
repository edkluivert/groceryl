import 'package:get/get.dart';
import 'package:groceryl/features/home_screen/binding/home_binding.dart';
import 'package:groceryl/features/home_screen/view/home_screen.dart';
import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),

  ];
}