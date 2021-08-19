import 'package:flutter/material.dart';
import 'package:groceryl/config/pallate.dart';

class Price extends StatelessWidget {
  const Price({
    Key? key,
    required this.amount,
  }) : super(key: key);
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "\₦",
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(fontWeight: FontWeight.w600, color: wPrimaryColor),
        children: [
          TextSpan(
            text: amount,
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: "/kg",
            style:
            TextStyle(color: Colors.black26, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}