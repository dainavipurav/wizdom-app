import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wizdom_app/components/custom_button.dart';
import 'package:wizdom_app/utils/enums/appbar_action.dart';

class AppbarListItem extends StatelessWidget {
  final AppbarAction action;
  final String? value;
  const AppbarListItem({
    super.key,
    required this.action,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    if (value == null || value.toString().trim().isEmpty) {
      return IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 26, horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 22,
                  children: [
                    Image.asset('assets/images/gift.png'),
                    Text(
                      'Here is a special gift just for you!',
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontWeight: FontWeight.w800,
                              ),
                      textAlign: TextAlign.center,
                    ),
                    CustomButton(btnText: 'SHOW ME'),
                  ],
                ),
              ),
            ),
          );
        },
        icon: SvgPicture.asset(action.icon),
      );
    }
    return TextButton.icon(
      onPressed: () {},
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
