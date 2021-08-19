import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryl/config/constants.dart';
import 'package:groceryl/config/pallate.dart';
import 'package:groceryl/features/cart/controller/cart_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'card_detailsview_card.dart';

class CartDetailsView extends StatelessWidget {
  const CartDetailsView({Key? key, required this.controller}) : super(key: key);

  final CartController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Cart", style: Theme.of(context).textTheme.headline6),
          ...List.generate(
            controller.cart.length,
                (index) => CartDetailsViewCard(groceryItem: controller.cart[index]),
          ),
          SizedBox(height: defaultPadding),
          SizedBox(
            width: double.infinity,
            height: 55.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: wPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r)
                )
              ),
              onPressed: () {},
              child: Text("Next - \₦500",
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16.sp
              ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
