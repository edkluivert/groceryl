import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextFormField buildPasswordFormField() {
  return TextFormField(
    obscureText: true,
    //controller: _controller.passwordController,
    onSaved: (value) {
     // _controller.password = value!;
    },
    validator: (value) {
      //return _controller.validatePassword(value!);
    },
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),

      ),
      //labelText: "Password",
      hintText: "Enter your password",
      // If  you are using latest version of flutter then lable text and hint text shown like this
      // if you r using flutter less then 1.20.* then maybe this is not working properly
      floatingLabelBehavior: FloatingLabelBehavior.always,
      //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
    ),
  );
}
