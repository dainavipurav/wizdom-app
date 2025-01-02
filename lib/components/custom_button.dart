import 'package:flutter/material.dart';
import 'package:wizdom_app/utils/constants/constants.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final void Function()? onTap;
  const CustomButton({
    super.key,
    required this.btnText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Theme.of(context).colorScheme.primary,
          border: Border(
            top: AppConstants.border(
                color: Theme.of(context).colorScheme.primary, width: 1),
            bottom: AppConstants.border(
                color: Theme.of(context).colorScheme.primary, width: 4),
            left: AppConstants.border(
                color: Theme.of(context).colorScheme.primary, width: 1),
            right: AppConstants.border(
                color: Theme.of(context).colorScheme.primary, width: 1),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 0,
              spreadRadius: 0,
              color: Theme.of(context).colorScheme.primaryContainer,
            )
          ],
        ),
        child: Center(
          child: Text(
            btnText,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.w800,
                ),
          ),
        ),
      ),
    );
  }
}
