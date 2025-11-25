import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/gen/colors.gen.dart';


class TextFontStyle {
  //Initialising Constractor
  TextFontStyle._();

  //Splash & Onboarding Screens
  static final textStyle35cFFFFFFPoppinsBold = TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const [
      'Open Sans',
      'Roboto',
      'Noto Sans',
    ],
    color: AppColors.cFFFFFF,
    fontSize: 35.sp,
    fontWeight: FontWeight.bold,
  );

    static final textStyle32c141A52PoppinsBold = TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const [
      'Open Sans',
      'Roboto',
      'Noto Sans',
    ],
    color: AppColors.c141A52,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
  );

   static final textStyle16cFFFFFFPoppinsSemiBold = TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const [
      'Open Sans',
      'Roboto',
      'Noto Sans',
    ],
    color:AppColors.cFFFFFF,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );

   
   // SignIn & SignUP Screens

    static final textStyle14c939393PoppinsRegular= TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const [
      'Open Sans',
      'Roboto',
      'Noto Sans',
    ],
    color: AppColors.c939393,
    fontSize: 14.sp,
 
  );

    static final textStyle11c212652PoppinsRegular= TextStyle(
    fontFamily: "Poppins",
    fontFamilyFallback: const [
      'Open Sans',
      'Roboto',
      'Noto Sans',
    ],
    color: AppColors.c939393,
    fontSize: 11.sp,
    
 
  );


 


}