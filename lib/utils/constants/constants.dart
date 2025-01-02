import 'package:flutter/material.dart';
import 'package:wizdom_app/core/theme/colors.dart';

class AppConstants {
  static border({Color color = AppColors.borderColor, double width = 1}) =>
      BorderSide(
        color: color,
        width: width,
      );
}
