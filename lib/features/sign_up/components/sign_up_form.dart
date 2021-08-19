
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryl/config/pallate.dart';
import 'package:groceryl/features/sign_up/controller/sign_up_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SignUpForm extends StatefulWidget{
  @override
  _SignUpForm createState() => _SignUpForm();

}
class _SignUpForm extends State<SignUpForm> {

  final _controller = Get.put(SignUpController());
  final _formKey = GlobalKey<FormState>();
  bool _btnEnabled = false;
  bool _autoValidate = false;


  @override
  Widget build(BuildContext context) {
       return Form(
         key: _formKey,
         onChanged: () =>setState(() => _btnEnabled = _formKey.currentState!.validate()),
         autovalidateMode: _autoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
         child: Column(
           children: [
             buildFullNameFormField(),
             SizedBox(height: 10.h),
             buildPhoneNumberFormField(),
             SizedBox(height: 10.h),
             buildEmailFormField(),
             SizedBox(height: 10.h),
             buildPasswordFormField(),
             SizedBox(height: 10.h),
             buildConfirmPassFormField(),
             SizedBox(height: 40.h),
             SizedBox(
               width: double.infinity,
               height: 56.h,
               child: ElevatedButton(
                 onPressed: () {},
                 child: Text(
                   'Proceed',
                   style: TextStyle(color: Colors.white,
                       fontSize: 18.sp,
                       fontFamily: 'Roboto'
                   ),
                 ),
                 style: ElevatedButton.styleFrom(
                   primary: wPrimaryColor,
                   shape: new RoundedRectangleBorder(
                       borderRadius: new BorderRadius.circular(10.r)
                   ),
                 ),
               ),
             ),
             SizedBox(
               height: 20.h,
             ),

           ],
         ),
       );



  }
  _onSignUp()async {
    if (_formKey.currentState!.validate()) {

      }else{
      setState(() {
        _autoValidate = true;
      });
    }
  }

  TextFormField buildConfirmPassFormField() {
    return TextFormField(
      obscureText: true,
       controller: _controller.confirmPassController,
      onSaved: (value) {
        _controller.confirm_pass = value!;
      },
      validator: (value) {
        return _controller.validateConfirmPassword(value!);
      },
      decoration: InputDecoration(

         labelText: "Confirm Password",
        labelStyle: GoogleFonts.montserrat(
            color: wPrimaryColor
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not going to work properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
     controller: _controller.passwordController,
      onSaved: (value) {
        _controller.password = value!;
      },
      validator: (value) {
        return _controller.validatePassword(value!);
      },
      decoration: InputDecoration(

         labelText: "Password",
        hintText: "Password",

        labelStyle: GoogleFonts.montserrat(
            color: wPrimaryColor
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
     controller: _controller.emailController,
      onSaved: (value) {
        _controller.email = value!;
      },
      validator: (value) {
        return _controller.validateEmail(value!);
      },
      decoration: InputDecoration(

        labelText: "Email",


        labelStyle: GoogleFonts.montserrat(
            color: wPrimaryColor
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildFullNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
     controller: _controller.nameController,
      onSaved: (value) {
        _controller.name = value!;
      },
      validator: (value) {
        return _controller.validateName(value!);
      },
      decoration: InputDecoration(

         labelText: "Full name",

        labelStyle: GoogleFonts.montserrat(
            color: wPrimaryColor
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
     // controller: phoneNumber,
      keyboardType: TextInputType.phone,
      controller: _controller.phoneController,
      onSaved: (value) {
        _controller.phone = value!;
      },
      validator: (value) {
        return _controller.validatePhone(value!);
      },
      decoration: InputDecoration(

        labelText: "Phone Number",

        labelStyle: GoogleFonts.montserrat(
            color: wPrimaryColor
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}