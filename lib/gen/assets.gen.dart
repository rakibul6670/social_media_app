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

  /// File path: assets/icons/down_arrow.png
  AssetGenImage get downArrow =>
      const AssetGenImage('assets/icons/down_arrow.png');

  /// File path: assets/icons/left_arrow.png
  AssetGenImage get leftArrow =>
      const AssetGenImage('assets/icons/left_arrow.png');

  /// File path: assets/icons/message_active.png
  AssetGenImage get messageActive =>
      const AssetGenImage('assets/icons/message_active.png');

  /// File path: assets/icons/message_inactive.png
  AssetGenImage get messageInactive =>
      const AssetGenImage('assets/icons/message_inactive.png');

  /// File path: assets/icons/plus.png
  AssetGenImage get plus => const AssetGenImage('assets/icons/plus.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/search_active.png
  AssetGenImage get searchActive =>
      const AssetGenImage('assets/icons/search_active.png');

  /// File path: assets/icons/search_inactive.png
  AssetGenImage get searchInactive =>
      const AssetGenImage('assets/icons/search_inactive.png');

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
        activityActive,
        activityInactive,
        addPostActive,
        addPostInactive,
        downArrow,
        leftArrow,
        messageActive,
        messageInactive,
        plus,
        search,
        searchActive,
        searchInactive,
        userProfileActive,
        userProfileInactive,
        welcomeLogo
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Frame 11.png
  AssetGenImage get frame11 =>
      const AssetGenImage('assets/images/Frame 11.png');

  /// File path: assets/images/female.png
  AssetGenImage get female => const AssetGenImage('assets/images/female.png');

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
        frame11,
        female,
        male,
        welcomeBackground,
        welcomeForeground,
        welcomeRectangle
      ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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
