import 'package:social_media_app/gen/colors.gen.dart';

import '/helpers/ui_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BottomNavBarItem {
  String title;
  String image;
  String activeImage;
  bool isActive;
  bool isRepairOwner;

  BottomNavBarItem({
    required this.title,
    required this.image,
    required this.isActive,
    required this.activeImage,
    this.isRepairOwner = false,
  });

  Widget buildWidget() {
    return Container(
      width: isRepairOwner ? null : 75.w,
      padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 0.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            isActive ? activeImage : image,
            width: 22.w,
            height: 22.h,
          ),
          UIHelper.verticalSpace(4.h),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11.sp,
              height: 1.2,
              fontWeight: FontWeight.w500,
              color:
                  isActive
                      ? AppColors.c000000
                      : AppColors.c000000.withValues(alpha: 0.6),
            ),
          ),
          if (isActive) UIHelper.verticalSpace(2.h),
        ],
      ),
    );
  }
}
