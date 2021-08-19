import 'package:flutter/material.dart';
import 'package:groceryl/config/pallate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundIconBtn extends StatelessWidget {
  const RoundIconBtn({
    Key? key,
    required this.iconData,
    this.color = wPrimaryColor,
    required this.press,
  }) : super(key: key);

  final IconData iconData;
  final Color color;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      shape: CircleBorder(),
      elevation: 0,
      color: Colors.white,
      height: 36.h,
      minWidth: 36.w,
      onPressed: press,
      child: Icon(
        iconData,
        color: color,
      ),
    );
  }
}