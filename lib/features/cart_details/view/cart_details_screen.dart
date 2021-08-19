import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryl/config/app_strings.dart';
import 'package:groceryl/config/constants.dart';
import 'package:groceryl/config/pallate.dart';
import 'package:groceryl/core/model/grocery.dart';
import 'package:groceryl/features/cart/components/fav_btn.dart';
import 'package:groceryl/features/cart/components/price.dart';
import 'package:groceryl/features/cart_details/components/cart_counter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartDetailsScreen extends StatefulWidget{

  const CartDetailsScreen(
      {Key? key, required this.grocery, required this.onGroceryAdd})
      : super(key: key);

  final Grocery grocery;
  final VoidCallback onGroceryAdd;

  @override
  _CartDetails createState()=> _CartDetails();

}
class _CartDetails extends State<CartDetailsScreen>{
  @override
  Widget build(BuildContext context) {
    String _cartTag = "";
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(

          child:Column(
            children: [
              AspectRatio(
                aspectRatio: 1.37,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      color: Color(0xFFF8F8F8),
                      child: Hero(
                        tag: widget.grocery.title! + _cartTag,
                        child: Image.asset(widget.grocery.image!),
                      ),
                    ),
                    Positioned(
                      bottom: -20,
                      child: CartCounter(),
                    )
                  ],
                ),
              ),
              SizedBox(height: defaultPadding * 1.5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.grocery.title!,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Price(amount: "2000.00"),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: defaultPadding.w, vertical: defaultPadding.h),
                child: Text(groceryItemDesc,
                    style: GoogleFonts.montserrat(
                        color: Color(0xFFBDBDBD),
                        height: 1.8.h
                    )
                ),
              ),
              SizedBox(height: 50.h,),
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: wPrimaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r)
                        )
                    ),
                    onPressed: () {
                      widget.onGroceryAdd();
                      setState(() {
                        _cartTag = '_cartTag';
                      });
                      Navigator.pop(context);
                    },
                    child: Text("Add to Cart"),
                  ),
                ),
              ),
              SizedBox(height: 30.h,)

            ],
          ),
        ),
      ),


    );
  }
  AppBar buildAppBar() {
    return AppBar(
      leading: BackButton(
        color: Colors.black,
      ),
      backgroundColor: Color(0xFFF8F8F8),
      elevation: 0,
      centerTitle: true,
      title: Text(
        widget.grocery.title!,
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        FavBtn(radius: 20.r),
        SizedBox(width: defaultPadding),
      ],
    );
  }

}