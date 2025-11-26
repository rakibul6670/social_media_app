import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/constants/text_font_style.dart';
import 'package:social_media_app/gen/assets.gen.dart';
import 'package:social_media_app/gen/colors.gen.dart';
import 'package:social_media_app/helpers/ui_helpers.dart';

class SystemSection extends StatelessWidget {
  const SystemSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      crossAxisAlignment: CrossAxisAlignment.start,
     children: [
        Text("System",style: TextFontStyle.textStyle12c787878PoppinsRegular,),
    
    //  UIHelper.verticalSpace(16.h), 
    
     Row(
       children: [
    
         Image.asset(Assets.icons.welcomeLogo.path,height: 40.h, width: 40.w,),
    
         UIHelper.horizontalSpace(16.w),
    
         Text("Welcome to Hapnezz arma...",
         style: TextFontStyle.textStyle14c939393PoppinsRegular.copyWith(
          color: AppColors.c141A52
         ),
         maxLines: 1,
         overflow: TextOverflow.ellipsis,
         ),
         Spacer(),
    
         Text("2m",style: TextFontStyle.textStyle12c787878PoppinsRegular.copyWith(
           //
           color:AppColors.cB3B3B3
         ),)
    
    
    
    
       ],
     ),
    
     
     Row(
       children: [
    
         Image.asset(Assets.icons.notification.path,height: 40.h, width: 40.w,),

    
         UIHelper.horizontalSpace(16.w),
    
         Text("You can turn off notifications",
         style: TextFontStyle.textStyle14c939393PoppinsRegular.copyWith(
          color: AppColors.c141A52
         ),
         maxLines: 1,
         overflow: TextOverflow.ellipsis,
         ),
         
         Spacer(),
    
         Image.asset(Assets.icons.forwordArrow.path,height: 24.h, width: 24.w,)
    
    
    
    
       ],
     )
     ],
    );
  }
}
