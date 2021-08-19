
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavBtn extends StatelessWidget {
  const FavBtn({
    Key? key,
    this.radius = 10,
  }) : super(key: key);

  final double radius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("added");
      },
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Color(0xFFF7F7F7),
        child: SvgPicture.asset("assets/icons/heart.svg"),
      ),
    );
  }
}
