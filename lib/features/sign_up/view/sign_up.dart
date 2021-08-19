import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceryl/config/pallate.dart';
import 'package:groceryl/features/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wPrimaryColor,
      body: Body(),
    );
  }

}