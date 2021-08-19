import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryl/config/constants.dart';
import 'package:groceryl/config/pallate.dart';
import 'package:groceryl/core/model/grocery.dart';
import 'package:groceryl/features/cart/controller/cart_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardShortView extends StatelessWidget {
  const CardShortView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final CartController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Cart",
          style: GoogleFonts.montserrat(
            fontSize: 22.sp,
            color: wTitleTextColor,
            fontWeight: FontWeight.w500
          ),
        ),
        const SizedBox(width: defaultPadding),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                controller.cart.length,
                    (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding / 2),
                  child: Hero(
                    tag: controller.cart[index].grocery.title! + "_cartTag",
                    child: GestureDetector(
                      onTap: (){
                        //controller.removeGroceryItem(controller.cart[index].grocery);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage:
                        AssetImage(controller.cart[index].grocery.image!),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Text(
            controller.totalCartItems().toString(),
            style: TextStyle(fontWeight: FontWeight.bold, color: wPrimaryColor),
          ),
        )
      ],
    );
  }
}