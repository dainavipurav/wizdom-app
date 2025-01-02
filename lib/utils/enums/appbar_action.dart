import 'package:flutter/material.dart';
import 'package:wizdom_app/core/theme/colors.dart';
import 'package:wizdom_app/utils/constants/icons.dart';

enum AppbarAction {
  stories('Stories', AppIconsPath.stories, AppColors.blue),
  streak('Streak', AppIconsPath.streak, AppColors.orange),
  coins('Coins', AppIconsPath.coins, AppColors.yellow),
  gift('Gift', AppIconsPath.gift);

  final String _value;
  final Color? color;
  final String icon;

  const AppbarAction(this._value, this.icon, [this.color]);

  String get value => _value;
}
