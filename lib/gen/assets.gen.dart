// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsI18nGen {
  const $AssetsI18nGen();

  /// File path: assets/i18n/en.json
  String get en => 'assets/i18n/en.json';

  /// File path: assets/i18n/tr.json
  String get tr => 'assets/i18n/tr.json';

  /// List of all assets
  List<String> get values => [en, tr];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// Directory path: assets/images/onboarding
  $AssetsImagesOnboardingGen get onboarding =>
      const $AssetsImagesOnboardingGen();

  /// File path: assets/images/splash.jpg
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [logo, splash];
}

class $AssetsImagesOnboardingGen {
  const $AssetsImagesOnboardingGen();

  /// File path: assets/images/onboarding/brush.png
  AssetGenImage get brush =>
      const AssetGenImage('assets/images/onboarding/brush.png');

  /// Directory path: assets/images/onboarding/page1
  $AssetsImagesOnboardingPage1Gen get page1 =>
      const $AssetsImagesOnboardingPage1Gen();

  /// File path: assets/images/onboarding/page1.png
  AssetGenImage get page1Png =>
      const AssetGenImage('assets/images/onboarding/page1.png');

  /// Directory path: assets/images/onboarding/page2
  $AssetsImagesOnboardingPage2Gen get page2 =>
      const $AssetsImagesOnboardingPage2Gen();

  /// File path: assets/images/onboarding/page2.png
  AssetGenImage get page2Png =>
      const AssetGenImage('assets/images/onboarding/page2.png');

  /// Directory path: assets/images/onboarding/page3
  $AssetsImagesOnboardingPage3Gen get page3 =>
      const $AssetsImagesOnboardingPage3Gen();

  /// File path: assets/images/onboarding/page3.png
  AssetGenImage get page3Png =>
      const AssetGenImage('assets/images/onboarding/page3.png');

  /// File path: assets/images/onboarding/plant.png
  AssetGenImage get plant =>
      const AssetGenImage('assets/images/onboarding/plant.png');

  /// File path: assets/images/onboarding/spray.png
  AssetGenImage get spray =>
      const AssetGenImage('assets/images/onboarding/spray.png');

  /// File path: assets/images/onboarding/sun.png
  AssetGenImage get sun =>
      const AssetGenImage('assets/images/onboarding/sun.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    brush,
    page1Png,
    page2Png,
    page3Png,
    plant,
    spray,
    sun,
  ];
}

class $AssetsImagesOnboardingPage1Gen {
  const $AssetsImagesOnboardingPage1Gen();

  /// File path: assets/images/onboarding/page1/camera_line.png
  AssetGenImage get cameraLine =>
      const AssetGenImage('assets/images/onboarding/page1/camera_line.png');

  /// File path: assets/images/onboarding/page1/water.png
  AssetGenImage get water =>
      const AssetGenImage('assets/images/onboarding/page1/water.png');

  /// List of all assets
  List<AssetGenImage> get values => [cameraLine, water];
}

class $AssetsImagesOnboardingPage2Gen {
  const $AssetsImagesOnboardingPage2Gen();

  /// File path: assets/images/onboarding/page2/phone.png
  AssetGenImage get phone =>
      const AssetGenImage('assets/images/onboarding/page2/phone.png');

  /// File path: assets/images/onboarding/page2/scan.png
  AssetGenImage get scan =>
      const AssetGenImage('assets/images/onboarding/page2/scan.png');

  /// List of all assets
  List<AssetGenImage> get values => [phone, scan];
}

class $AssetsImagesOnboardingPage3Gen {
  const $AssetsImagesOnboardingPage3Gen();

  /// File path: assets/images/onboarding/page3/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/onboarding/page3/background.png');

  /// File path: assets/images/onboarding/page3/flat_iphone.png
  AssetGenImage get flatIphone =>
      const AssetGenImage('assets/images/onboarding/page3/flat_iphone.png');

  /// File path: assets/images/onboarding/page3/plant_cards.png
  AssetGenImage get plantCards =>
      const AssetGenImage('assets/images/onboarding/page3/plant_cards.png');

  /// List of all assets
  List<AssetGenImage> get values => [background, flatIphone, plantCards];
}

class Assets {
  const Assets._();

  static const $AssetsI18nGen i18n = $AssetsI18nGen();
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
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
