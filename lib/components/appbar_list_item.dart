import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wizdom_app/utils/enums/appbar_action.dart';

class AppbarListItem extends StatelessWidget {
  final AppbarAction action;
  final String? value;
  final void Function()? onPressed;
  const AppbarListItem({
    super.key,
    required this.action,
    this.value,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (value == null || value.toString().trim().isEmpty) {
      return IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(action.icon),
      );
    }
    return TextButton.icon(
      onPressed: onPressed,
      label: Text(
        value!,
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              color: action.color,
              fontWeight: FontWeight.bold,
            ),
      ),
      icon: SvgPicture.asset(action.icon),
    );
  }
}
