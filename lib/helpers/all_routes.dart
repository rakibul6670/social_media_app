// ignore_for_file: unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:social_media_app/features/add_post/pregentation/add_post_screen.dart';
import 'package:social_media_app/features/auth/pregentation/enter_user_name_screen.dart';
import 'package:social_media_app/features/auth/pregentation/gender_select_screen.dart';
import 'package:social_media_app/features/auth/pregentation/interested_select_screen.dart';
import 'package:social_media_app/features/auth/pregentation/sign_up_screen.dart';
import 'package:social_media_app/features/auth/pregentation/signin_screen.dart';
import 'package:social_media_app/features/message/pregentation/message_screen.dart';
import 'package:social_media_app/features/search/presentation/search_screen.dart';
import 'package:social_media_app/features/user_profile/presentation/user_profile_screen.dart';
import 'package:social_media_app/navigation_screen.dart';

final class Routes {
  
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  // Auth Routes
  static const String signInScreen = '/signIn';
  static const String signUpScreen = '/signUp';
  static const String genderSelectScreen = '/genderSelect';
  static const String interestedSelectScreen = '/interestedSelect';
  static const String enterUserNameScreen = '/enterUserName';
  static const String addPostScreen = '/addPost';
  static const String activityScreen = '/activity';
  static const String messageScreen = '/message';
  static const String userProfileScreen = '/userProfile';
  static const String searchScreen = '/search';

  // static const String forgotPWScreen = '/ForgotPWScreen';
  // static const String otpScreen = '/OtpScreen';
  // static const String setPassword = '/SetPassword';
  // //products_with_pagination
  // static const String productsWithPagination = '/ProductsWithPagination';
  // //ProductsScreen
  // static const String productsScreen = '/ProductsScreen';
  // //ProductDetailsScreen
  // static const String productDetailsScreen = '/ProductDetailsScreen';
  
  // // Main App Routes
  // static const String homeScreen = '/home_screen';
  static const String navigationScreen = '/NavigationScreen';
  // static const String profile = '/Profile';

}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Auth Routes
      case Routes.signInScreen:
        return defaultTargetPlatform == TargetPlatform.iOS
            ? CupertinoPageRoute(builder: (context) => const SignInScreen())
            : _FadedTransitionRoute(widget: const SignInScreen(), settings: settings);
      
      case Routes.signUpScreen:
        return defaultTargetPlatform == TargetPlatform.iOS
            ? CupertinoPageRoute(builder: (context) => const SignUpScreen())
            : _FadedTransitionRoute(widget: const SignUpScreen(), settings: settings);

      case Routes.genderSelectScreen:
        return defaultTargetPlatform == TargetPlatform.iOS 
            ? CupertinoPageRoute(builder: (context) => GenderSelectScreen())
            : _FadedTransitionRoute(widget:GenderSelectScreen(), settings: settings);


                  case Routes.interestedSelectScreen:
        return defaultTargetPlatform == TargetPlatform.iOS 
            ? CupertinoPageRoute(builder: (context) => const InterestedSelectScreen())
            : _FadedTransitionRoute(widget: const InterestedSelectScreen(), settings: settings);

                  case Routes.enterUserNameScreen:
        return defaultTargetPlatform == TargetPlatform.iOS 
            ? CupertinoPageRoute(builder: (context) => const EnterUserNameScreen())
            : _FadedTransitionRoute(widget: const EnterUserNameScreen(), settings: settings);

      case Routes.addPostScreen:
        return defaultTargetPlatform == TargetPlatform.iOS
            ? CupertinoPageRoute(builder: (context) => AddPostScreen())
            : _FadedTransitionRoute(widget: AddPostScreen(), settings: settings);
      
      case Routes.messageScreen:
        return defaultTargetPlatform == TargetPlatform.iOS
            ? CupertinoPageRoute(builder: (context) => MessageScreen())
            : _FadedTransitionRoute(widget: MessageScreen(), settings: settings);

      case Routes.genderSelectScreen:
        return defaultTargetPlatform == TargetPlatform.iOS 
            ? CupertinoPageRoute(builder: (context) => GenderSelectScreen())
            : _FadedTransitionRoute(widget:GenderSelectScreen(), settings: settings);


                  case Routes.searchScreen:
        return defaultTargetPlatform == TargetPlatform.iOS 
            ? CupertinoPageRoute(builder: (context) => SearchScreen())
            : _FadedTransitionRoute(widget: SearchScreen(), settings: settings);

                  case Routes.userProfileScreen:
        return defaultTargetPlatform == TargetPlatform.iOS 
            ? CupertinoPageRoute(builder: (context) => UserProfileScreen())
            : _FadedTransitionRoute(widget: UserProfileScreen(), settings: settings);

      // case Routes.productDetailsScreen:
      //   final args = settings.arguments as Map;
      //   return defaultTargetPlatform == TargetPlatform.iOS 
      //       ? CupertinoPageRoute(builder: (context) => ProductDetailsScreen(productId: args['productId']))
      //       : _FadedTransitionRoute(widget: ProductDetailsScreen(productId: args['productId']), settings: settings);
      
      // case Routes.forgotPWScreen:
      //   return defaultTargetPlatform == TargetPlatform.iOS
      //       ? CupertinoPageRoute(builder: (context) => const ForgotPWScreen())
      //       : _FadedTransitionRoute(widget: const ForgotPWScreen(), settings: settings);
      
      // case Routes.otpScreen:
      //   final args = settings.arguments as Map;
      //   return defaultTargetPlatform == TargetPlatform.iOS
      //       ? CupertinoPageRoute(builder: (context) => OtpScreen(isFromLogin: args['isFromLogin']))
      //       : _FadedTransitionRoute(
      //           widget: OtpScreen(isFromLogin: args['isFromLogin']),
      //           settings: settings
      //         );
      
      // case Routes.setPassword:
      //   final args = settings.arguments as Map;
      //   return defaultTargetPlatform == TargetPlatform.iOS
      //       ? CupertinoPageRoute(builder: (context) => SetPasswordScreen(name: args['name'], email: args['email']))
      //       : _FadedTransitionRoute(
      //           widget: SetPasswordScreen(name: args['name'], email: args['email']),
      //           settings: settings
      //         );

      // // Main App Routes
      // case Routes.homeScreen:
      //   return defaultTargetPlatform == TargetPlatform.iOS
      //       ? CupertinoPageRoute(builder: (context) => const HomeScreen())
      //       : _FadedTransitionRoute(widget: const HomeScreen(), settings: settings);
      
      case Routes.navigationScreen:
        return defaultTargetPlatform == TargetPlatform.iOS
            ? CupertinoPageRoute(builder: (context) => const NavigationScreen())
            : _FadedTransitionRoute(widget: const NavigationScreen(), settings: settings);
      
      // case Routes.profile:
      //   return defaultTargetPlatform == TargetPlatform.iOS
      //       ? CupertinoPageRoute(builder: (context) => const ProfileScreen())
      //       : _FadedTransitionRoute(widget: const ProfileScreen(), settings: settings);

      default:
        return null;
    }
  }
}

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
          settings: settings,
          reverseTransitionDuration: const Duration(milliseconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 1),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.ease,
              ),
              child: child,
            );
          },
        );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}