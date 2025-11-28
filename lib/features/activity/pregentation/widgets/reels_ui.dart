import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/constants/text_font_style.dart';
import 'package:social_media_app/gen/assets.gen.dart';
import 'package:social_media_app/gen/colors.gen.dart';
import 'package:social_media_app/helpers/ui_helpers.dart';
import 'package:video_player/video_player.dart';

class ReelsUI extends StatefulWidget {
  


  const ReelsUI({
    super.key, required this.videoPlayerController, required this.reels,
  });

    final VideoPlayerController videoPlayerController;
    final Map<String,dynamic> reels;

  @override
  State<ReelsUI> createState() => _ReelsUIState();
}

class _ReelsUIState extends State<ReelsUI> {
  bool isSave = false;
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
  bool isPlaying= widget.videoPlayerController.value.isPlaying;
  int likeCount =  widget.reels["likes"];
  log("Like count : $likeCount");
    return Align(
        alignment: Alignment.center,
        child: Stack(children: [
          Positioned(
            top: 50.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Following",
                      style: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold,
                    )),
                UIHelper.horizontalSpace(34.w),
                Image.asset(
                  Assets.icons.rectangleLine.path,
                  height: 24,
                ),
                UIHelper.horizontalSpace(34.w),
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Tending",
                      style: TextFontStyle.textStyle16cFFFFFFPoppinsSemiBold,
                    )),
              ],
            ),
          ),

          //RIGHT ICON SECTION
          Positioned(
              bottom: 16.h,
              right: 16.w,
              // left: 0,
              child: Column(
                spacing: 16.h,
                children: [
                  //Achivement
                  Column(
                    children: [
                      Container(
                             padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
                           height: 48.h,
                            width: 48.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.c979797.withValues(alpha: .6)
              

                          ),
                        child: Image.asset(
                          Assets.icons.achivementpng.path,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                      UIHelper.verticalSpace(8.h),
                      Text(
                        widget.reels["achievement"],
                        style: TextFontStyle.textStyle12c787878PoppinsRegular
                            .copyWith(color: AppColors.cFFFFFF,),
                        maxLines: 1,
            
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),


                  //Save
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSave = !isSave;
                      
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
                           height: 48.h,
                            width: 48.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.c979797.withValues(alpha: .6)
              

                          ),
                          child: Image.asset(
                            Assets.icons.save.path,
                            height: 24.h,
                            width: 24.w,
                            color: isSave? null: Colors.grey,
                          ),
                        ),
                        UIHelper.verticalSpace(8.h),
                        Text(
                          "Save",
                          style: TextFontStyle.textStyle12c787878PoppinsRegular
                              .copyWith(color: AppColors.cFFFFFF),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  //Like
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                              if(isLiked){
                            likeCount = 1;
                           }
                            
                            isLiked = !isLiked;
                         
                          });
                        },

                       
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
                           height: 48.h,
                            width: 48.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.c979797
                          ),
                          child: Image.asset(
                            Assets.icons.liked.path,
                            height: 24.h,
                            width: 24.w,
                            color: isLiked? Colors.red: Colors.white,
                          
                          ),
                        ),
                      ),
                      UIHelper.verticalSpace(8.h),


                      Text(
                        likeCount.toString()
                        ,
                        style: TextFontStyle.textStyle12c787878PoppinsRegular
                            .copyWith(color: AppColors.cFFFFFF),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),

                  //Share
                  Column(
                    children: [
                      Container(
                             padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
                           height: 48.h,
                            width: 48.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.c979797.withValues(alpha: .6)
              

                          ),
                        child: Image.asset(
                          Assets.icons.share.path,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                      UIHelper.verticalSpace(8.h),
                      Text(
                        widget.reels["shares"].toString(),
                        style: TextFontStyle.textStyle12c787878PoppinsRegular
                            .copyWith(color: AppColors.cFFFFFF),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),

                  //Comment
                  Column(
                    children: [
                      Container(
                             padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
                           height: 48.h,
                            width: 48.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.c979797.withValues(alpha: .6)
              

                          ),
                        child: Image.asset(
                          Assets.icons.messageInactive.path,
                          height: 24.h,
                          width: 24.w,
                          color: Colors.white,
                        
                        ),
                      ),
                      UIHelper.verticalSpace(8.h),
                      Text(
                        widget.reels["comments"].toString(),
                        style: TextFontStyle.textStyle12c787878PoppinsRegular
                            .copyWith(color: AppColors.cFFFFFF),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              )),

          //PROFILE
          Positioned(
              left: 16.w,
              bottom: 16.h,
              right: 88.w,
              child: Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          
                          Image.asset(Assets.images.friend1.path,height: 32.h, width: 32.w,fit: BoxFit.cover,),
                          
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
                              padding: const EdgeInsets.all(6),
                              height: 16.h,
                              width: 16.w,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.allPrimaryColor),
                              child: Center(
                                child: Image.asset(
                                  Assets.icons.checkMark.path,
                                  height: 4.h,
                                  width: 4.w,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      UIHelper.horizontalSpace(16.w),
                      Text(
                       widget.reels["userName"],
                        style: TextFontStyle.textStyle14c939393PoppinsRegular
                            .copyWith(
                          color: AppColors.cFFFFFF,
                        ),
                      ),
                    ],
                  ),

                  UIHelper.verticalSpace(16.h),

                  //Subtitle & tag
                  Text(
                    "Thailan’s capital is a fast, buzzing city of over eight million people. Know for cosmopolitan feel",
                    style:
                        TextFontStyle.textStyle12c787878PoppinsRegular.copyWith(
                      color: AppColors.cFFFFFF,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),

                  UIHelper.verticalSpace(16.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        Assets.icons.music.path,
                        height: 16.h,
                        width: 16.w,
                      ),
                      UIHelper.horizontalSpace(16.w),
                      Text(widget.reels["songName"],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextFontStyle.textStyle11c212652PoppinsRegular
                              .copyWith(
                            color: Colors.white,
                          ))
                    ],
                  )
                ],
              )),


           //PLAY PAUSE Button

           GestureDetector(
            onTap: () {
              widget.videoPlayerController.play();
              setState(() {
                isPlaying= !isPlaying;
              });

            },
             child: Center(
              child: Visibility(
                visible: !isPlaying ,
                child:Container(
                  height: 60.h,
                  width: 60.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child:  Icon(
                       Icons.play_arrow,
                       size: 40.sp,
                       
                  
                  ),
                ),
              ),
             ),
           )



        ]));
  }
}
