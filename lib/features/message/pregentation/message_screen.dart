import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/common_widgets/custom_text_form_field.dart';
import 'package:social_media_app/constants/text_font_style.dart';
import 'package:social_media_app/gen/assets.gen.dart';
import 'package:social_media_app/gen/colors.gen.dart';
import 'package:social_media_app/helpers/ui_helpers.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {

  final TextEditingController searchController = TextEditingController();
  String selectedItem = "all";

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
              "Activity",
              style: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold
                  .copyWith(color: AppColors.c434343),
            ),
          ],
        ),
        actions: [
          Image.asset(
            Assets.icons.plus.path,
            height: 24.h,
            width: 24.w,
          ),
          UIHelper.horizontalSpace(16.w),
        ],
      ),

      //BODY
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(36.h),
            Row(
              spacing: 14.w,
              children: [
                //DROP DROWN
                Expanded(
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: AppColors.allPrimaryColor,
                      borderRadius: BorderRadius.circular(6)
                    ),

                    child: Center(
                      child: DropdownButton(
                        elevation: 4,
                        value:selectedItem,
                        dropdownColor: AppColors.allPrimaryColor,
                        style:TextFontStyle.textStyle14c939393PoppinsRegular.copyWith(
                          color: AppColors.cFFFFFF,
                          fontWeight: FontWeight.w500
                        ) ,
                        icon: Image.asset(Assets.icons.downArrow.path,height: 24.h, width: 24.w,),
                        alignment: Alignment.centerRight,
                    
                        items: const [
                        DropdownMenuItem(
                          alignment: Alignment.center,
                          value: "all", child: Text("All Activity")),
                        DropdownMenuItem(
                            value: "activity", child: Text("Activity")),
                        DropdownMenuItem(value: "system", child: Text("System")),
                        DropdownMenuItem(value: "other", child: Text("Other")),
                      ], onChanged: (value) {
                        setState(() {
                          log("Dopdrown Value: $value");
                         if(value != null){
                            selectedItem = value;
                         }
                        });
                      }),
                    ),
                  ),
                ),

                //SEARCH
                Expanded(
                    child: CustomTextFormField(
                        controller: searchController, hintText: "Search...."))
              ],
            ),


            UIHelper.verticalSpace(24.h),


          ],
        ),
      )),
    );
  }
}
