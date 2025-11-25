// lib/widgets/buttons/custom_text_button.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/constants/text_font_style.dart';
import 'package:social_media_app/gen/colors.gen.dart';

class CustomTexButton extends StatelessWidget {
  const CustomTexButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.textStyle,
    this.padding,
    this.alignment = Alignment.centerRight,
    this.bgColor,
    this.minimumSize
  });

  final VoidCallback onPressed;
  final String title;
  final TextStyle? textStyle;
  final Color? bgColor;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry alignment;
  final Size? minimumSize;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: bgColor ?? AppColors.allPrimaryColor,
            //padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: minimumSize??  Size(327.w, 56.h),
          ),
          child: Text(
            title,
             style: textStyle ?? TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold,
          ),
        ),
      ),
    );
  }
}
