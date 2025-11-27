import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/constants/text_font_style.dart';
import 'package:social_media_app/gen/assets.gen.dart';
import 'package:social_media_app/gen/colors.gen.dart';
import 'package:social_media_app/helpers/ui_helpers.dart';

class ReelsUI extends StatelessWidget {
  const ReelsUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        children: [


          Positioned(
            top: 12.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Text("Following",style: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold,)),
            
                  UIHelper.horizontalSpace(34.w),
            
                  Image.asset(Assets.icons.rectangleLine.path,height: 24,),
            
                  UIHelper.horizontalSpace(34.w),
            
            
                 GestureDetector(
                  onTap: () {
                    
                  },
                  child: Text("Tending",style: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold,)),
                
              ],
            ),
          ),


          Positioned(
            bottom: 76.h,
            right: 16.w,
            child: Column(
              spacing: 16.h,
            children: List.generate(
              6, (index){
                return Column(
                  children: [
                     Image.asset(Assets.icons.achivementpng.path,height: 48.h, width: 48.w,),

                     UIHelper.verticalSpace(8.h),

              Text("#Thai",
              style: TextFontStyle.textStyle12c787878PoppinsRegular.copyWith(
                color: AppColors.cFFFFFF
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              )

                  ],
                );
              }
            
            ),
          )),


          //
          Positioned(
            left: 16.w,
            bottom:76.h,
            child: Column(
            children: [

              Row(
                children: [

                   Stack(
                              clipBehavior: Clip.none,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.blue,
                                ),
                                // Image.asset(
                                //   Assets.icons.greenCircle.path,
                                //   height: 40.h,
                                //   width: 40.w,
                                // ),
                                Positioned(
                                  top: 8.h,
                                  left: 24.w,
                                  bottom: 8,
                                  child: Container(
                                    padding: EdgeInsets.all(6),
                                    height: 16.h,
                                    width: 16.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.allPrimaryColor
                                    ),

                                    child: Center(
                                      child: Image.asset(
                                          Assets.icons.checkMark.path,height: 4.h, width: 4.w,
                                      ),
                                    ),
                                  ),
                                ),
                              ], 
                            ),

                   

                ],
              )
            ],
          ))


          
          
          
        ],
      ),
    );
  }
}