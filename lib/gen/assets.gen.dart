// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/achivementpng.png
  AssetGenImage get achivementpng =>
      const AssetGenImage('assets/icons/achivementpng.png');

  /// File path: assets/icons/activity_active.png
  AssetGenImage get activityActive =>
      const AssetGenImage('assets/icons/activity_active.png');

  /// File path: assets/icons/activity_inactive.png
  AssetGenImage get activityInactive =>
      const AssetGenImage('assets/icons/activity_inactive.png');

  /// File path: assets/icons/add_post_active.png
  AssetGenImage get addPostActive =>
      const AssetGenImage('assets/icons/add_post_active.png');

  /// File path: assets/icons/add_post_inactive.png
  AssetGenImage get addPostInactive =>
      const AssetGenImage('assets/icons/add_post_inactive.png');

  /// File path: assets/icons/check_mark.png
  AssetGenImage get checkMark =>
      const AssetGenImage('assets/icons/check_mark.png');

  /// File path: assets/icons/comment.png
  AssetGenImage get comment => const AssetGenImage('assets/icons/comment.png');

  /// File path: assets/icons/down_arrow.png
  AssetGenImage get downArrow =>
      const AssetGenImage('assets/icons/down_arrow.png');

  /// File path: assets/icons/forword_arrow.png
  AssetGenImage get forwordArrow =>
      const AssetGenImage('assets/icons/forword_arrow.png');

  /// File path: assets/icons/green_circle.png
  AssetGenImage get greenCircle =>
      const AssetGenImage('assets/icons/green_circle.png');

  /// File path: assets/icons/left_arrow.png
  AssetGenImage get leftArrow =>
      const AssetGenImage('assets/icons/left_arrow.png');

  /// File path: assets/icons/liked.png
  AssetGenImage get liked => const AssetGenImage('assets/icons/liked.png');

  /// File path: assets/icons/message_active.png
  AssetGenImage get messageActive =>
      const AssetGenImage('assets/icons/message_active.png');

  /// File path: assets/icons/message_inactive.png
  AssetGenImage get messageInactive =>
      const AssetGenImage('assets/icons/message_inactive.png');

  /// File path: assets/icons/music.png
  AssetGenImage get music => const AssetGenImage('assets/icons/music.png');

  /// File path: assets/icons/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/icons/notification.png');

  /// File path: assets/icons/plus.png
  AssetGenImage get plus => const AssetGenImage('assets/icons/plus.png');

  /// File path: assets/icons/rectangleLine.png
  AssetGenImage get rectangleLine =>
      const AssetGenImage('assets/icons/rectangleLine.png');

  /// File path: assets/icons/save.png
  AssetGenImage get save => const AssetGenImage('assets/icons/save.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/search_active.png
  AssetGenImage get searchActive =>
      const AssetGenImage('assets/icons/search_active.png');

  /// File path: assets/icons/search_inactive.png
  AssetGenImage get searchInactive =>
      const AssetGenImage('assets/icons/search_inactive.png');

  /// File path: assets/icons/share.png
  AssetGenImage get share => const AssetGenImage('assets/icons/share.png');

  /// File path: assets/icons/user_profile_active.png
  AssetGenImage get userProfileActive =>
      const AssetGenImage('assets/icons/user_profile_active.png');

  /// File path: assets/icons/user_profile_inactive.png
  AssetGenImage get userProfileInactive =>
      const AssetGenImage('assets/icons/user_profile_inactive.png');

  /// File path: assets/icons/welcome_logo.png
  AssetGenImage get welcomeLogo =>
      const AssetGenImage('assets/icons/welcome_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        achivementpng,
        activityActive,
        activityInactive,
        addPostActive,
        addPostInactive,
        checkMark,
        comment,
        downArrow,
        forwordArrow,
        greenCircle,
        leftArrow,
        liked,
        messageActive,
        messageInactive,
        music,
        notification,
        plus,
        rectangleLine,
        save,
        search,
        searchActive,
        searchInactive,
        share,
        userProfileActive,
        userProfileInactive,
        welcomeLogo
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/female.png
  AssetGenImage get female => const AssetGenImage('assets/images/female.png');

  /// File path: assets/images/friend1.png
  AssetGenImage get friend1 => const AssetGenImage('assets/images/friend1.png');

  /// File path: assets/images/friend2.png
  AssetGenImage get friend2 => const AssetGenImage('assets/images/friend2.png');

  /// File path: assets/images/friend3.png
  AssetGenImage get friend3 => const AssetGenImage('assets/images/friend3.png');

  /// File path: assets/images/male.png
  AssetGenImage get male => const AssetGenImage('assets/images/male.png');

  /// File path: assets/images/welcome_background.png
  AssetGenImage get welcomeBackground =>
      const AssetGenImage('assets/images/welcome_background.png');

  /// File path: assets/images/welcome_foreground.png
  AssetGenImage get welcomeForeground =>
      const AssetGenImage('assets/images/welcome_foreground.png');

  /// File path: assets/images/welcome_rectangle.png
  AssetGenImage get welcomeRectangle =>
      const AssetGenImage('assets/images/welcome_rectangle.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        female,
        friend1,
        friend2,
        friend3,
        male,
        welcomeBackground,
        welcomeForeground,
        welcomeRectangle
      ];
}

class $AssetsVideosGen {
  const $AssetsVideosGen();

  /// File path: assets/videos/natural.mp4
  String get natural => 'assets/videos/natural.mp4';

  /// List of all assets
  List<String> get values => [natural];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsVideosGen videos = $AssetsVideosGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
