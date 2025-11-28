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
    const AddPostScreen(),
    const MessageScreen(),
    const ActivityScreen(),
    const SearchScreen(),
    const UserProfileScreen(),

  
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
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar:  Container(
             width: double.infinity,
              padding: EdgeInsets.only(bottom: 16.h, top: 10.h),
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
        
        
      
    );
  }
}
