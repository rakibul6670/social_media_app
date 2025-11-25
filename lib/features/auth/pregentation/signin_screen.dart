import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/common_widgets/custom_text_button.dart';
import 'package:social_media_app/common_widgets/custom_text_form_field.dart';
import 'package:social_media_app/constants/text_font_style.dart';
import 'package:social_media_app/gen/assets.gen.dart';
import 'package:social_media_app/gen/colors.gen.dart';
import 'package:social_media_app/helpers/all_routes.dart';
import 'package:social_media_app/helpers/navigation_service.dart';
import 'package:social_media_app/helpers/ui_helpers.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.cFFFFFF,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.cFFFFFF,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.pop(context);
                  NavigationService.goBack;
                },
                child: Image.asset(
                  Assets.icons.leftArrow.path,
                  height: 24.h,
                  width: 24.w,
                ),
              ),
              UIHelper.horizontalSpace(8),
              Text(
                "Back",
                style: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold
                    .copyWith(color: AppColors.c434343),
              )
            ],
          ),
        ),



        
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpace(32),
              Text(
                "Welcome to,\nHapnezz",
                style: TextFontStyle.textStyle32c141A52PoppinsBold,
              ),
              UIHelper.verticalSpace(17.h),
              CustomTextFormField(
                controller: emailController,
                hintText: "Enter your email",
              ),
              UIHelper.verticalSpace(22.h),
              CustomTextFormField(
                controller: passwordController,
                hintText: "Enter your password",
              ),

              //Remember me CheckBox
              UIHelper.verticalSpace(22.h),

              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  UIHelper.horizontalSpace(8.w),
                  Text(
                    "Remember me",
                    style: TextFontStyle.textStyle14c939393PoppinsRegular,
                  ),
                  UIHelper.horizontalSpace(51.w),
                  Text(
                    "Forgot password",
                    style: TextFontStyle.textStyle14c939393PoppinsRegular
                        .copyWith(color: AppColors.c2F80ED),
                  ),
                ],
              ),

              UIHelper.verticalSpace(24),

              Center(
                  child: CustomTexButton(
                 onPressed: () => NavigationService.navigateTo(Routes.genderSelectScreen),
                title: "Login Hapnezz",
              )),
              UIHelper.verticalSpace(32),
              const Center(child: Text("Or")),
              UIHelper.verticalSpace(32.h),
              Row(
                children: [
                  CustomTexButton(
                    bgColor: AppColors.secondaryColor,
                    minimumSize: Size(153.w, 53.h),
                    onPressed: () {},
                    title: "Gmail",
                    textStyle: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold
                        .copyWith(
                      fontSize: 15,
                    ),
                  ),
                  UIHelper.horizontalSpace(21),
                  CustomTexButton(
                   bgColor:const Color(0xff1E81C9), 
                    minimumSize: Size(153.w, 53.h),
                    onPressed: () {}, title: "Facebook",
                    textStyle: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold
                        .copyWith(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              UIHelper.verticalSpace(75.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have and account ?",
                    style: TextFontStyle.textStyle11c212652PoppinsRegular,
                  ),
                  GestureDetector(
                      onTap: () => NavigationService.navigateTo(Routes.signUpScreen),
                      child: Text(
                        " Sign Up",
                        style: TextFontStyle.textStyle11c212652PoppinsRegular
                            .copyWith(color: AppColors.c2F80ED),
                      ))
                ],
              )

              // Align(
              //   alignment: Alignment.center,
              //   child: RichText(
              //       text: TextSpan(children: [
              //     TextSpan(
              //         style: TextFontStyle.textStyle11c212652PoppinsRegular,
              //         text: "By continuing you agree Hapnezz"),
              //     TextSpan(
              //         style: TextFontStyle.textStyle11c212652PoppinsRegular
              //             .copyWith(
              //           color: AppColors.c2F80ED,
              //         ),
              //         text: " Term Of Use "),
              //     TextSpan(
              //         style: TextFontStyle.textStyle11c212652PoppinsRegular,
              //         text: " and confirm"),
              //     TextSpan(
              //         style: TextFontStyle.textStyle11c212652PoppinsRegular,
              //         text: " that you have read Hapnezz"),
              //     TextSpan(
              //         style: TextFontStyle.textStyle11c212652PoppinsRegular
              //             .copyWith(
              //           color: AppColors.c2F80ED,
              //         ),
              //         text: " Privacy Police")
              //   ])),
              // )
            ],
          ),
        )));
  }
}
