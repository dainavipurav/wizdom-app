import 'package:flutter/material.dart';
import 'package:wizdom_app/utils/constants/constants.dart';
import 'package:wizdom_app/utils/constants/icons.dart';

class CategoryCard extends StatelessWidget {
  final String icon;
  final String label;

  const CategoryCard({
    required this.icon,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border(
          bottom: AppConstants.border(width: 3),
          left: AppConstants.border(width: 1),
          right: AppConstants.border(width: 1),
          top: AppConstants.border(width: 1),
        ),
      ),
      child: Row(
        spacing: 8,
        mainAxisSize: MainAxisSize.min,
        children: [
          AppIcons.iconByName(icon),
          Flexible(
            child: Text(
              label,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
