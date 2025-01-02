import 'package:flutter_svg/svg.dart';

abstract class AppIcons {
  static final coins = SvgPicture.asset(AppIconsPath.coins);
  static final gift = SvgPicture.asset(AppIconsPath.gift);
  static final stories = SvgPicture.asset(AppIconsPath.stories);
  static final streak = SvgPicture.asset(AppIconsPath.streak);
  static final audio = SvgPicture.asset(AppIconsPath.audio);
  static final reading = SvgPicture.asset(AppIconsPath.reading);

  static iconByName(String name) => SvgPicture.asset('assets/icons/$name.svg');
  static imageByName(String name) =>
      SvgPicture.asset('assets/images/$name.svg');
}

abstract class AppIconsPath {
  static const String coins = 'assets/icons/coins.svg';
  static const String gift = 'assets/icons/gift.svg';
  static const String stories = 'assets/icons/stories.svg';
  static const String streak = 'assets/icons/streak.svg';
  static const String audio = 'assets/icons/audio.svg';
  static const String reading = 'assets/icons/reading.svg';
}
