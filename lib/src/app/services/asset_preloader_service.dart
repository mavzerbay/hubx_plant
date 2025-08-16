import 'package:flutter/material.dart';

class AssetPreloaderService {
  AssetPreloaderService._internal();

  static final AssetPreloaderService _instance =
      AssetPreloaderService._internal();
  static AssetPreloaderService get instance => _instance;

  final Map<String, ImageProvider> _preloadedImages = {};
  final Set<String> _preloadingInProgress = {};

  /// Limited Offer Modal için gerekli asset'leri preload eder
  static const List<String> limitedOfferAssets = [
    'assets/icons/premium/account.png',
    'assets/icons/premium/more_matches.png',
    'assets/icons/premium/featured.png',
    'assets/icons/premium/more_likes.png',
  ];

  /// Asset'leri preload eder
  Future<void> preloadAssets(
    BuildContext context,
    List<String> assetPaths,
  ) async {
    final preloadFutures = <Future<void>>[];

    for (final assetPath in assetPaths) {
      if (!_preloadedImages.containsKey(assetPath) &&
          !_preloadingInProgress.contains(assetPath)) {
        _preloadingInProgress.add(assetPath);

        final imageProvider = AssetImage(assetPath);
        _preloadedImages[assetPath] = imageProvider;

        preloadFutures.add(
          precacheImage(imageProvider, context)
              .catchError((Object error) {
                debugPrint('Asset preload failed for $assetPath: $error');
              })
              .whenComplete(() {
                _preloadingInProgress.remove(assetPath);
              }),
        );
      }
    }

    await Future.wait(preloadFutures);
  }

  /// Limited Offer Modal asset'lerini preload eder
  Future<void> preloadLimitedOfferAssets(BuildContext context) async {
    await preloadAssets(context, limitedOfferAssets);
  }

  /// Preload edilmiş image provider'ı döndürür
  ImageProvider? getPreloadedImage(String assetPath) {
    return _preloadedImages[assetPath];
  }

  /// Asset'in preload edilip edilmediğini kontrol eder
  bool isAssetPreloaded(String assetPath) {
    return _preloadedImages.containsKey(assetPath);
  }

  /// Cache'i temizler
  void clearCache() {
    _preloadedImages.clear();
    _preloadingInProgress.clear();
  }

  /// Belirli asset'leri cache'den kaldırır
  void removeFromCache(List<String> assetPaths) {
    for (final assetPath in assetPaths) {
      _preloadedImages.remove(assetPath);
    }
  }
}
