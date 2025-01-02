import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String imageName;
  final String label;

  const StoryCard({
    required this.imageName,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 96.8,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(14.52),
        border:
            Border.all(width: 3, color: Theme.of(context).colorScheme.primary),
      ),
      child: Image.asset('assets/images/$imageName.png', fit: BoxFit.fill),
    );
  }
}
