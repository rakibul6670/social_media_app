import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/gen/colors.gen.dart';

class CustomChoiceChip extends StatelessWidget {


  const CustomChoiceChip({super.key, required this.isSelected, required this.chipName, this.onChanged});

  final bool isSelected;
  final String chipName;
  final ValueChanged<bool>? onChanged;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      width: double.infinity,
      child: ChoiceChip(
        label: Text(
      chipName,
      style: TextStyle(
        color: isSelected ? Colors.white : Colors.black,
        fontWeight: FontWeight.w600,
      ),
        ),
        selectedColor: AppColors.cFFFFFF,
        backgroundColor: AppColors.allPrimaryColor,
        selected: isSelected,
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6),
        ),
        onSelected:onChanged,
      ),
    );
  }
}