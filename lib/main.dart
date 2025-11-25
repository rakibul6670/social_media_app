
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/helpers/all_routes.dart';
import 'package:social_media_app/helpers/navigation_service.dart';
import 'package:social_media_app/welcome_screen.dart';

void main(){
  runApp(const SocialMedia());
}


class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const  Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
            navigatorKey: NavigationService.navigatorKey,
              onGenerateRoute: RouteGenerator.generateRoute,
          home: const WelcomeScreen(),
        );
      },
    );
  }
}

