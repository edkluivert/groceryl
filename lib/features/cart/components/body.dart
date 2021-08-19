import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceryl/config/constants.dart';
import 'package:groceryl/core/model/grocery.dart';
import 'package:groceryl/features/cart/components/cart_header.dart';
import 'package:groceryl/features/cart/controller/cart_controller.dart';
import 'package:groceryl/features/cart_details/view/cart_details_screen.dart';

import 'GroceryCard.dart';
import 'card_details_view.dart';
import 'card_short_view.dart';

class Body extends StatelessWidget{

  final controller = CartController();

  void _onVerticalGesture(DragUpdateDetails details) {
    if (details.primaryDelta! < -0.7) {
      controller.changeHomeState(CartState.cart);
    } else if (details.primaryDelta! > 12) {
      controller.changeHomeState(CartState.normal);
    }
  }

  @override
  Widget build(BuildContext context) {
  return SafeArea(
    bottom: false,
    child: Container(
      color: Color(0xFFEAEAEA),
      child: AnimatedBuilder(
          animation: controller,
          builder: (context, _) {
            return LayoutBuilder(
              builder: (context, BoxConstraints constraints) {
                return Stack(
                  children: [
                    AnimatedPositioned(
                      duration: panelTransition,
                      top: controller.cartState == CartState.normal
                          ? headerHeight
                          : -(constraints.maxHeight -
                          cartBarHeight * 2 -
                          headerHeight),
                      left: 0,
                      right: 0,
                      height: constraints.maxHeight -
                          headerHeight -
                          cartBarHeight,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            bottomLeft:
                            Radius.circular(defaultPadding * 1.5),
                            bottomRight:
                            Radius.circular(defaultPadding * 1.5),
                          ),
                        ),
                        child: GridView.builder(
                          itemCount: demo_grocery.length,
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.75,
                            mainAxisSpacing: defaultPadding,
                            crossAxisSpacing: defaultPadding,
                          ),
                          itemBuilder: (context, index) => GroceryCard(
                            grocery: demo_grocery[index],
                            press: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration:
                                  const Duration(milliseconds: 500),
                                  reverseTransitionDuration:
                                  const Duration(milliseconds: 500),
                                  pageBuilder: (context, animation,
                                      secondaryAnimation) =>
                                      FadeTransition(
                                        opacity: animation,
                                        child: CartDetailsScreen(
                                          grocery: demo_grocery[index],
                                          onGroceryAdd: () {
                                            controller.addGroceryToCart(
                                                demo_grocery[index]);
                                          },
                                        ),
                                      ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    // Card Panel
                    AnimatedPositioned(
                      duration: panelTransition,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      height: controller.cartState == CartState.normal
                          ? cartBarHeight
                          : (constraints.maxHeight - cartBarHeight),
                      child: GestureDetector(
                        onVerticalDragUpdate: _onVerticalGesture,
                        child: Container(
                          padding: const EdgeInsets.all(defaultPadding),
                          color: Color(0xFFEAEAEA),
                          alignment: Alignment.topLeft,
                          child: AnimatedSwitcher(
                            duration: panelTransition,
                            child: controller.cartState == CartState.normal
                                ? CardShortView(controller: controller)
                                : CartDetailsView(controller: controller),
                          ),
                        ),
                      ),
                    ),
                    // Header
                    AnimatedPositioned(
                      duration: panelTransition,
                      top: controller.cartState == CartState.normal
                          ? 0
                          : -headerHeight,
                      right: 0,
                      left: 0,
                      height: headerHeight,
                      child: CartHeader(),
                    ),
                  ],
                );
              },
            );
          }),
    ),
  );
  }

}