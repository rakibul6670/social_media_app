import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/features/activity/pregentation/activity_screen.dart';
import 'package:social_media_app/features/add_post/pregentation/add_post_screen.dart';
import 'package:social_media_app/features/message/pregentation/message_screen.dart';
import 'package:social_media_app/features/search/presentation/search_screen.dart';
import 'package:social_media_app/features/user_profile/presentation/user_profile_screen.dart';


import '/gen/assets.gen.dart';
import 'common_widgets/bottom_nav_bar_item.dart';

import 'gen/colors.gen.dart';

class NavigationScreen extends StatefulWidget {
  final int? index;
  const NavigationScreen({super.key, this.index});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  final List<dynamic> _screens = [
    AddPostScreen(),
    MessageScreen(),
    ActivityScreen(),
    SearchScreen(),
    UserProfileScreen(),

  
  ];
  @override
  void initState() {
    if (widget.index != null) {
      _currentIndex = widget.index!;
    }
    super.initState();
  }

  void onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      // onPopInvokedWithResult: (bool didPop, _) async {
      //   showMaterialDialog(context);
      // },
      child: Scaffold(
        body: Stack(
          children: [

            Center(child: _screens[_currentIndex]),


            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 70.h,
                width: 1.sw,
                padding: EdgeInsets.only(bottom: 0.h, top: 10.h),
                decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.c000000.withAlpha(0x12),
                      blurRadius: 8,
                      spreadRadius: 0,
                      offset: const Offset(0, -5),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    InkWell(
                      enableFeedback: false,
                      onTap: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      child:
                          BottomNavBarItem(
                            image: Assets.icons.addPostInactive.path,
                            title: 'Add Post',
                            isActive: _currentIndex == 0 ? true : false,
                            activeImage: Assets.icons.addPostActive.path,
                          ).buildWidget(),
                    ),
                    InkWell(
                      enableFeedback: false,
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      child:
                          BottomNavBarItem(
                            image: Assets.icons.messageInactive.path,
                            title: 'Message',
                            isActive: _currentIndex == 1 ? true : false,
                            activeImage: Assets.icons.messageActive.path,
                          ).buildWidget(),
                    ),
                    const Spacer(),
                    InkWell(
                      enableFeedback: false,
                      onTap: () {
                        setState(() {
                          _currentIndex = 2;
                        });
                      },
                      child:
                          BottomNavBarItem(
                            image: Assets.icons.activityInactive.path,
                            title: 'Activity',
                            isActive: _currentIndex == 2 ? true : false,
                            activeImage: Assets.icons.activityActive.path,
                          ).buildWidget(),
                    ),


                    InkWell(
                      enableFeedback: false,
                      onTap: () {
                        setState(() {
                          _currentIndex = 3;
                        });
                      },
                      child:
                          BottomNavBarItem(
                            image: Assets.icons.searchInactive.path,
                            title: 'Search',
                            isActive: _currentIndex == 3 ? true : false,
                            activeImage: Assets.icons.searchActive.path,
                          ).buildWidget(),
                    ),
                    InkWell(
                      enableFeedback: false,
                      onTap: () {
                        setState(() {
                          _currentIndex = 4;
                        });
                      },
                      child:
                          BottomNavBarItem(
                            image: Assets.icons.userProfileInactive.path,
                            title: 'Profile',
                            isActive: _currentIndex == 4 ? true : false,
                            activeImage: Assets.icons.userProfileActive.path,
                          ).buildWidget(),
                    ),
                  ],
                ),
              ),
            ),




            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Container(
            //     margin: EdgeInsets.only(bottom: 25.h),
            //     decoration: BoxDecoration(
            //       shape: BoxShape.circle,
            //       boxShadow: [
            //         BoxShadow(
            //           color: AppColors.c000000.withAlpha(0x12),
            //           blurRadius: 10,
            //           spreadRadius: 0,
            //           offset: const Offset(0, -2),
            //         ),
            //       ],
            //     ),
            //     child: Container(
            //       decoration: const BoxDecoration(shape: BoxShape.circle),
            //       // margin: EdgeInsets.only(top: 15.h),
            //       child: GestureDetector(
            //         onTap: () {
            //           onItemTapped(0);
            //           showDialog(
            //             context: context,
            //             builder: (BuildContext context) {
            //               return VoiceRecordingOverlay();
            //             },
            //           );
            //         },
            //         child: Image.asset(
            //           Assets.icons.voiceNav.path,
            //           height: 60.h,
            //           width: 60.w,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
         
         
          ],
        ),
      ),
    );
  }
}
