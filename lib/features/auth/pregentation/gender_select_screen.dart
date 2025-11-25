import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/common_widgets/custom_text_button.dart';
import 'package:social_media_app/constants/text_font_style.dart';
import 'package:social_media_app/features/auth/widgets/circle_number.dart';
import 'package:social_media_app/gen/assets.gen.dart';
import 'package:social_media_app/gen/colors.gen.dart';
import 'package:social_media_app/helpers/all_routes.dart';
import 'package:social_media_app/helpers/navigation_service.dart';
import 'package:social_media_app/helpers/ui_helpers.dart';

class GenderSelectScreen extends StatefulWidget {
  const GenderSelectScreen({super.key});

  @override
  State<GenderSelectScreen> createState() => _GenderSelectScreenState();
}

class _GenderSelectScreenState extends State<GenderSelectScreen> {
  bool genderIsMale = true;

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
                //   log("Back button cliked :${NavigationService.goBack}");
                // NavigationService.goBack;

                //   //  NavigationService.goBackCall();
                //   Navigator.of(context).pop();
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
                Positioned(right: 0, child: circleNumber(3, AppColors.cD7D7D7)),
                Positioned(
                    // right: 35.w,
                    right: 28.w,
                    child: circleNumber(2, AppColors.cD7D7D7)),
                Positioned(
                    right: 60, child: circleNumber(1, AppColors.cfe4938)),
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
          crossAxisAlignment: CrossAxisAlignment.start
          ,
          children: [
            UIHelper.verticalSpace(24.h),
            Text(
              "What’s your \n gender?",
              style: TextFontStyle.textStyle32c141A52PoppinsBold,
            ),
            UIHelper.verticalSpace(16.h),
            Text(
              "This help us find you more relevant \n content",
              style: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold
                  .copyWith(color: const Color(0xFF141A52)),
            ),
            UIHelper.verticalSpace(32.h),
            Row(
              spacing: 23,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genderIsMale = !genderIsMale;
                      });
                    },
                    child: Image.asset(
                      Assets.images.male.path,
                      height: 300.h,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genderIsMale = !genderIsMale;
                      });
                    },
                    child: Container(
                      height: 300.h,
                      decoration: BoxDecoration(
                          color: const Color(0xffF3F7FC),
                          borderRadius: BorderRadius.circular(6)),
                      child: Image.asset(
                        Assets.images.female.path,
                        height: 300.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Male",
                  style: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold
                      .copyWith(
                          color: genderIsMale
                              ? AppColors.allPrimaryColor
                              : Color(0xffB3B3B3)),
                ),
                Text(
                  "Female",
                  style: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold
                      .copyWith(
                          color: !genderIsMale
                              ? AppColors.allPrimaryColor
                              : Color(0xffB3B3B3)),
                ),
              ],
            ),
            UIHelper.verticalSpace(40),

            CustomTexButton(
              alignment: Alignment.center,
                           minimumSize: Size(216.w, 56.h),
              onPressed: () =>
                  NavigationService.navigateTo(Routes.interestedSelectScreen),
              title: "Next Step",
            ),


          ],
        ),
      )),
    );
  
  }
}
