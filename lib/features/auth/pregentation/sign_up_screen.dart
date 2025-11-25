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

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.cFFFFFF,
        appBar: AppBar(
          backgroundColor: AppColors.cFFFFFF,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  //Navigator.pop(context);
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
                      "Sing up to,\nHapnezz",
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

                    UIHelper.verticalSpace(22.h),
                    CustomTextFormField(
                      controller: confirmPasswordController,
                      hintText: "Enter your confirm passwod",
                    ),

                    UIHelper.verticalSpace(32),

                    Center(
                        child: CustomTexButton(
                      onPressed: () =>
                          NavigationService.navigateTo(Routes.signInScreen),
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
                        ),
                        UIHelper.horizontalSpace(21),
                        CustomTexButton(
                          //  bgColor: AppColors.,
                          minimumSize: Size(153.w, 53.h),
                          onPressed: () {}, title: "Facebook",
                        )
                      ],
                    ),

                    UIHelper.verticalSpace(32.h),

                    Center(
                      child: Wrap(
                       
                        children: [
                          Text(
                            "By continuing you agree Hapnezz",
                            textAlign: TextAlign.center,
                            style: TextFontStyle.textStyle11c212652PoppinsRegular,
                          ),
                          GestureDetector(
                              onTap: () {},
                              child: Text(
                                " Term Of Use",
                                textAlign: TextAlign.center,
                                style: TextFontStyle
                                    .textStyle11c212652PoppinsRegular
                                    .copyWith(color: AppColors.c2F80ED),
                              )),
                          Text(
                            " and confirm that you have read Hapnezz",
                            textAlign: TextAlign.center,
                            style: TextFontStyle.textStyle11c212652PoppinsRegular,
                          ),
                          GestureDetector(
                              onTap: () {},
                              child: Text(
                                " Privacy Police",
                                textAlign: TextAlign.center,
                                style: TextFontStyle
                                    .textStyle11c212652PoppinsRegular
                                    .copyWith(color: AppColors.c2F80ED),
                              ))
                        ],
                      ),
                    ),

                    //  Center(
                    //    child: RichText(text: TextSpan(

                    //     children: [

                    //       TextSpan(
                    //         style: TextFontStyle.textStyle11c212652PoppinsRegular,
                    //         text: "By continuing you agree Hapnezz"
                    //       ),

                    //       TextSpan(
                    //         style: TextFontStyle.textStyle11c212652PoppinsRegular.copyWith(
                    //           color: AppColors.c2F80ED,
                    //         ),
                    //         text: " Term Of Use "
                    //       ),

                    //       TextSpan(
                    //         style: TextFontStyle.textStyle11c212652PoppinsRegular,
                    //         text: " and confirm"
                    //       ),
                    //        TextSpan(
                    //         style: TextFontStyle.textStyle11c212652PoppinsRegular,
                    //         text: " that you have read Hapnezz"
                    //       ),
                    //        TextSpan(

                    //         style: TextFontStyle.textStyle11c212652PoppinsRegular.copyWith(
                    //           color: AppColors.c2F80ED,
                    //         ),
                    //         text: " Privacy Police"
                    //       )

                  ])),
        ));
  }
}
