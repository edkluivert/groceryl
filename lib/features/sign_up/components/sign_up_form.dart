
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
             Align(
               alignment: Alignment.topLeft,
               child: Wrap(
                 children: [
                   Text("By registering on the app, you agree to the ",style: GoogleFonts.montserrat(
                     color: Color(0xA9DEA35B),
                     fontSize: 13.sp,
                     fontWeight: FontWeight.w500
                   ),),
                   Text("Terms & Conditions.",style: GoogleFonts.montserrat(
                     color: wPrimaryColor,
                     fontSize: 13.sp,
                       fontWeight: FontWeight.w500,
                     decoration: TextDecoration.underline,
                   ),
                   ),
                 ],
               ),
             ),

             SizedBox(height: 40.h),
             Material(
               color : Colors.transparent,
               child: InkWell(
                 onTap: (){},
                 splashColor: wPrimaryColorLight,
                 child: Container(
                   height: 55.h,
                   width: double.infinity,
                   decoration: BoxDecoration(
                       gradient: LinearGradient(
                         begin: Alignment.centerLeft,
                         end: Alignment.centerRight,
                         stops: [
                           0.3,
                           0.9
                         ],
                         colors: [
                           wBannerDarkColor,
                           wBannerLightColor,
                         ],
                       ),
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(10.r),
                        bottomLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r),
                     ),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("PROCEED".toUpperCase(),
                       style: GoogleFonts.montserrat(
                         color: Colors.white,
                          fontWeight: FontWeight.w700,
                         fontSize: 17.sp
                        ),
                       ),
                       Icon(Icons.arrow_forward_ios_sharp, color: Colors.white,)
                     ],
                   ),
                 ),
               ),
             ),
             SizedBox(height: 22.h,),
             Text("Or Sign Up With",style: GoogleFonts.montserrat(
               color: Color(0xA9DEA35B),
               fontSize: 13.sp,
               fontWeight: FontWeight.w500,

             ),
             ),
             SizedBox(height: 18.h,),
             Center(
               child: SizedBox(
                 width: 240.w,
                 height: 64.h,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Material(
                       color : Colors.transparent,
                       child: InkWell(
                         onTap:(){},
                         child: Container(
                           width: 64.w,
                           height: 64.h,
                           decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border: Border.all(
                                   color: Color(0xFF200A4D).withOpacity(0.20),
                                   width: 1.w
                               )
                           ),
                           child: Padding(
                               padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                               child: SvgPicture.asset('assets/icons/google.svg', width: 18.w, height: 18.h,)),
                         ),
                       ),
                     ),

                     Material(
                       color : Colors.transparent,
                       child: InkWell(
                         onTap: (){},
                         child: Container(
                           width: 64.w,
                           height: 64.h,
                           decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border: Border.all(
                                   color: Color(0xFF200A4D).withOpacity(0.20),
                                   width: 1.w
                               )
                           ),
                           child: Padding(
                               padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                               child: SvgPicture.asset('assets/icons/facebook.svg', width: 18.w, height: 18.h,)),
                         ),
                       ),
                     ),
                     Material(
                       color : Colors.transparent,
                       child: InkWell(
                         onTap: (){},
                         child: Container(
                           width: 64.w,
                           height: 64.h,
                           decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border: Border.all(
                                   color: Color(0xFF200A4D).withOpacity(0.20),
                                   width: 1.w
                               )
                           ),
                           child: Padding(
                               padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                               child: SvgPicture.asset('assets/icons/apple.svg', width: 18.w, height: 18.h,)),
                         ),
                       ),
                     )
                   ],
                 ),
               ),
             ),
             SizedBox(height: 20.h,),
             Center(
               child:  Wrap(
                 children: [
                   Text("Existing User?",style: GoogleFonts.montserrat(
                       color: Color(0xA9DEA35B),
                       fontSize: 13.sp,
                       fontWeight: FontWeight.w500
                   ),),
                   SizedBox(width: 5.w,),
                   Text("Log in",style: GoogleFonts.montserrat(
                     color: wPrimaryColor,
                     fontSize: 13.sp,
                     fontWeight: FontWeight.w500,
                     decoration: TextDecoration.underline,
                   ),
                   ),
                 ],
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