import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/common_widgets/custom_text_button.dart';
import 'package:social_media_app/common_widgets/custom_text_form_field.dart';
import 'package:social_media_app/constants/text_font_style.dart';

import 'package:social_media_app/features/auth/pregentation/widgets/circle_number.dart';

import 'package:social_media_app/gen/assets.gen.dart';
import 'package:social_media_app/gen/colors.gen.dart';
import 'package:social_media_app/helpers/all_routes.dart';
import 'package:social_media_app/helpers/navigation_service.dart';
import 'package:social_media_app/helpers/ui_helpers.dart';

class EnterUserNameScreen extends StatefulWidget {
  const EnterUserNameScreen({super.key});

  @override
  State<EnterUserNameScreen> createState() => _EnterUserNameScreenState();
}

class _EnterUserNameScreenState extends State<EnterUserNameScreen> {

  final TextEditingController nameController = TextEditingController();




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
            ),
          ],
        ),
        actions: [
          SizedBox(
            width: 110,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(right: 31, child: circleNumber(2, AppColors.cD7D7D7)),
                Positioned(
          
                    right: 56.w,
                    child: circleNumber(1, AppColors.cD7D7D7)),
                Positioned(
                    right: 0, child: circleNumber(3, AppColors.cfe4938)),
              ],
            ),
          ),
          UIHelper.horizontalSpace(23.h),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(24.h),
            Text(
              "Tell me your name \n please?",
              style: TextFontStyle.textStyle32c141A52PoppinsBold,
            ),
            UIHelper.verticalSpace(16.h),
            Text(
              "CThis help your friend to, find your \n hapnezz account",
              style: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold
                  .copyWith(color: const Color(0xFF141A52)),
            ),
            UIHelper.verticalSpace(32.h),

 
            CustomTextFormField(controller: nameController, hintText:"Input your name hare...."),

            
           

            UIHelper.verticalSpace(40.h),
            CustomTexButton(
              alignment: Alignment.center,
              minimumSize: Size(216.w, 56.h),
              onPressed: () =>
                  NavigationService.navigateTo(Routes.navigationScreen),
              title: "Next Step",
            )
          ],
        ),
      )),
    );
  }
}
