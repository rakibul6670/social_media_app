import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/common_widgets/custom_text_form_field.dart';
import 'package:social_media_app/constants/text_font_style.dart';
import 'package:social_media_app/features/message/data/dropdown_items.dart';
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
  String selectedItem = "All Activity";

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
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: AppColors.allPrimaryColor,
                        borderRadius: BorderRadius.circular(6)),
                    child: Center(
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                        iconStyleData: IconStyleData(
                            icon: Image.asset(
                          Assets.icons.downArrow.path,
                          height: 24.h,
                          width: 24.w,
                        )),
                        isExpanded: true,

                        items: dropdownMenuItem.map((item) {
                          final isSelected = item["title"] == selectedItem;
                          return DropdownMenuItem<String>(
                              value: item["title"],
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                height: 40.h,
                                width: 343.w,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? AppColors.allPrimaryColor
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Bottom Item name
                                        Text(
                                          item["title"],
                                          style: TextFontStyle
                                              .textStyle12c787878PoppinsRegular
                                              .copyWith(
                                            color: isSelected
                                                ? Colors.white
                                                : AppColors.c787878,
                                          ),
                                        ),

                                        // Bottom Item notification count
                                        Visibility(
                                          visible:
                                              item["title"] != "All Activity",
                                          child: Text(
                                            item["count"].toString(),
                                            style: TextFontStyle
                                                .textStyle12c787878PoppinsRegular
                                                .copyWith(
                                              color: 
                                                   AppColors.cfe4938
                                                 
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ));
                        }).toList(),
                        value: selectedItem,

                        //Select item
                        selectedItemBuilder: (context) {
                          return dropdownMenuItem.map((item) {
                            return Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Text(
                                  item["title"],
                                  style: TextFontStyle
                                      .textStyle12c787878PoppinsRegular
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                            );
                          }).toList();
                        },

                        //Change Menu Item
                        onChanged: (String? value) {
                          setState(() {
                            if (value != null) {
                              log("Selected Value: $value");
                              log("Selected Value: $selectedItem");
                              selectedItem = value;
                            }
                          });
                        },

                        //--Dropdown data
                        dropdownStyleData: DropdownStyleData(
                          width: double.infinity,
                          elevation: 0,
                          decoration: const BoxDecoration(color: Colors.white),
                          offset: Offset(0, -13.h),
                        ),
                        menuItemStyleData: const MenuItemStyleData(),
                      )),
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
