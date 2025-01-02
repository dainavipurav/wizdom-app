import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wizdom_app/core/theme/colors.dart';

abstract class AppIcons {
  static final coins = SvgPicture.asset(AppIconsPath.coins);
  static final gift = SvgPicture.asset(AppIconsPath.gift);
  static final stories = SvgPicture.asset(AppIconsPath.stories);
  static final streak = SvgPicture.asset(AppIconsPath.streak);
  static final audio = SvgPicture.asset(AppIconsPath.audio);
  static final reading = SvgPicture.asset(AppIconsPath.reading);

  static Widget iconByName(String? name) {
    if (name == null || name.isEmpty) {
      return Icon(Icons.error, color: AppColors.error); // Default error icon
    }
    try {
      return SvgPicture.asset('assets/icons/$name.svg');
    } catch (e) {
      return Icon(Icons.error, color: AppColors.error); // Default error icon
    }
  }

  static Widget imageByName(String? name) {
    if (name == null || name.isEmpty) {
      return Icon(Icons.error, color: AppColors.error); // Default error icon
    }
    try {
      return SvgPicture.asset('assets/images/$name.svg');
    } catch (e) {
      return Icon(Icons.error, color: AppColors.error); // Default error icon
    }
  }
}

abstract class AppIconsPath {
  static const String coins = 'assets/icons/coins.svg';
  static const String gift = 'assets/icons/gift.svg';
  static const String stories = 'assets/icons/stories.svg';
  static const String streak = 'assets/icons/streak.svg';
  static const String audio = 'assets/icons/audio.svg';
  static const String reading = 'assets/icons/reading.svg';
  static const String home = 'assets/icons/home.svg';
  static const String search = 'assets/icons/search.svg';
  static const String library = 'assets/icons/library.svg';
  static const String profile = 'assets/icons/profile.svg';
}
