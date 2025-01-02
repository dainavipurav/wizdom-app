import 'package:flutter/material.dart';

class SectionSubHeading extends StatelessWidget {
  final String heading;
  const SectionSubHeading({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        heading,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
