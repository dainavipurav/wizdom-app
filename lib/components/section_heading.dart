import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  final String heading;
  const SectionHeading({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        heading,
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
