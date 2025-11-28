import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/common_widgets/custom_text_button.dart';
import 'package:social_media_app/constants/text_font_style.dart';
import 'package:social_media_app/gen/assets.gen.dart';
import 'package:social_media_app/gen/colors.gen.dart';
import 'package:social_media_app/helpers/ui_helpers.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
        children: [



          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 72.h,
                    width: 72.w,
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(Assets.images.friend1.path),
                  ),
                ),


                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Image.asset(
                    Assets.icons.menu.path,
                    height: 19.h,
                    width: 19.w,
                  ),
                ),
              ],
            ),
          ),
        
         //User Name
         UIHelper.verticalSpace(16.h),
         Text("Emanuel \n Watson",style: TextFontStyle.textStyle24c212652PoppinsBold,),

         //Follow and Message Button
          UIHelper.verticalSpace(24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTexButton(
                textStyle: TextFontStyle.textStyle14c939393PoppinsRegular.copyWith(
                  color: AppColors.cFFFFFF
                ),
              minimumSize: Size(106.w, 40.h),
                onPressed: (){}, title: "Following"),
               UIHelper.horizontalSpace(24.h),

              Container(
                height: 40.h,
                width: 40.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.cFD4A38
                ),
                child: Center(
                  child: Image.asset(Assets.icons.messageInactive.path,  height: 24.h,
                  width: 24.w,color:AppColors.cFFFFFF,),
                ))
            ],
          ),

 UIHelper.verticalSpace(24.h),

           Text("PIVOTGANG  🏀",style: TextFontStyle.textStyle12c787878PoppinsRegular.copyWith(
            color: AppColors.c212652
           ),),
           Text("CARE FOR ME TOUR OUT NOW 🎙",style: TextFontStyle.textStyle12c787878PoppinsRegular.copyWith(
            color: AppColors.c212652
           ),),
           Text("#CHI-TOWN",style: TextFontStyle.textStyle12c787878PoppinsRegular.copyWith(
            color: AppColors.c212652
           ),),
           Text("This remind me of before we had insomnia",style: TextFontStyle.textStyle12c787878PoppinsRegular.copyWith(
            color: AppColors.c212652
           ),),
           Text("Sleepin' peacefully, never needed a pile of drugs",style: TextFontStyle.textStyle12c787878PoppinsRegular.copyWith(
            color: AppColors.c212652
           ),),

            UIHelper.verticalSpace(24.h),

            //Following Follower Badges
            Row(
              spacing: 40.w,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                //Following
                Column(
                  children: [
                     Text("29",style: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold.copyWith(
                      color: AppColors.c212652
                     ),),
                      UIHelper.verticalSpace(8.h),
                     Text("Following",style: TextFontStyle.textStyle14c939393PoppinsRegular,),
                  ],
                ),
                //Follower
                Column(
                  children: [
                Text("24.7k",style: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold.copyWith(
                      color: AppColors.c212652
                     ),),
                      UIHelper.verticalSpace(8.h),
                     Text("Follower",style: TextFontStyle.textStyle14c939393PoppinsRegular,),
                  ],
                ),

                //Badges
                Column(
                  children: [
                     Text("80",style: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold.copyWith(
                      color: AppColors.c212652
                     ),),
                      UIHelper.verticalSpace(8.h),
                     Text("Badges",style: TextFontStyle.textStyle14c939393PoppinsRegular,),
                  ],
                ),


              ],
            ),

             UIHelper.verticalSpace(32.h),

             //Image Grid
             Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 4.h,
                     crossAxisSpacing: 4.w,
                    crossAxisCount: 3),
                  itemBuilder: (context,index){
                    return Image.asset(Assets.images.tree.path,height: 194.h, fit: BoxFit.cover,);
                  }
                 
                  ),
               ),
             )








        ],
      )),
    );
  }
}
