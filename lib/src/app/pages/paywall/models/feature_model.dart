import 'package:hubx/gen/assets.gen.dart';
import 'package:hubx/gen/translations.g.dart';

class FeatureModel {
  const FeatureModel({
    required this.title,
    required this.subtitle,
    required this.iconPath,
  });
  final String title;
  final String subtitle;
  final String iconPath;
}

final List<FeatureModel> features = [
  FeatureModel(
    title: locale.paywall.features.unlimited.title,
    subtitle: locale.paywall.features.unlimited.description,
    iconPath: Assets.icons.identifyIcon.path,
  ),
  FeatureModel(
    title: locale.paywall.features.faster.title,
    subtitle: locale.paywall.features.faster.description,
    iconPath: Assets.icons.speedometer.path,
  ),
  FeatureModel(
    title: locale.paywall.features.exclusive.title,
    subtitle: locale.paywall.features.exclusive.description,
    iconPath: Assets.icons.profileIcon.path,
  ),
];
