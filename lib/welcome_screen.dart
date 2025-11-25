

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/common_widgets/custom_text_button.dart';
import 'package:social_media_app/constants/text_font_style.dart';
import 'package:social_media_app/gen/assets.gen.dart';
import 'package:social_media_app/helpers/all_routes.dart';
import 'package:social_media_app/helpers/navigation_service.dart';
import 'package:social_media_app/helpers/ui_helpers.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.c161C1E,
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          SizedBox(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                      height: 554.h,
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Image.asset(
                                Assets.images.welcomeForeground.path,
                                fit: BoxFit.cover,
                              )),
                          Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Image.asset(
                                Assets.images.welcomeBackground.path,
                                height: 554.h,
                                fit: BoxFit.cover,
                              )),
                        ],
                      )),
                ),

                //Bottom Box
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      height: 258.h,
                      child: Image.asset(
                        Assets.images.welcomeRectangle.path,
                        fit: BoxFit.cover,
                      ),
                    )),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UIHelper.verticalSpace(389.h),
              //LOGO
              Image.asset(
                Assets.icons.welcomeLogo.path,
                height: 72.h,
                width: 72.w,
                fit: BoxFit.cover,
              ),

              UIHelper.verticalSpace(40.h),

              Text(
                "Welcome  To,\n Hapnezz",
                textAlign: TextAlign.center,
                style: TextFontStyle.textStyle35cFFFFFFPoppinsBold,
              ),

              UIHelper.verticalSpace(58.h),

              CustomTexButton(
                  alignment: Alignment.center,
                 // onPressed: ()=> NavigationService.navigateTo(Routes.signUpScreen),
                 onPressed: (){
                  log("Route to sign up screen : ${Routes.signUpScreen}");
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                 NavigationService.navigateToUntilReplacement(Routes.signUpScreen);
                 },
                  title: "Login Hopnezz")
            ],
          )
        ],
      ),
    );
  }
}
