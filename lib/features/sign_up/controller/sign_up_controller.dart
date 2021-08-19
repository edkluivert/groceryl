import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{


  late TextEditingController emailController, passwordController,
      confirmPassController, nameController, phoneController;
  var email = '';
  var password = '';
  var name = '';
  var phone = '';
  var confirm_pass = '';



  @override
  void onInit() {

    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    phoneController = TextEditingController();
    confirmPassController = TextEditingController();


  }


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPassController.dispose();
    nameController.dispose();
    phoneController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validateName(String value){
    if(value.isEmpty){
      return "Enter your full name";
    }
    return null;
  }

  String? validatePhone(String value){
    if(value.isEmpty){
      return "Enter your Phone Number";
    }
    return null;
  }

  String? validateConfirmPassword(String value){
    if(value.isEmpty){
      return "Confirm password";
    }else if(value != passwordController.text){
      return "Password does not match";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }
    return null;
  }

}