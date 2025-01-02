import 'package:flutter/material.dart';
import 'package:wizdom_app/screens/home/home.dart';
import 'package:wizdom_app/utils/constants/icons.dart';

enum BottomNavItems {
  home('Home', AppIconsPath.home, Home()),
  search('Search', AppIconsPath.search),
  library('Library', AppIconsPath.library),
  profile('Profile', AppIconsPath.profile);

  final String _value;
  final String icon;
  final Widget? screen;

  const BottomNavItems(
    this._value,
    this.icon, [
    this.screen,
  ]);

  String get value => _value;
}
