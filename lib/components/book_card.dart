import 'package:flutter/material.dart';
import 'package:wizdom_app/core/theme/colors.dart';
import 'package:wizdom_app/utils/constants/icons.dart';
import 'package:wizdom_app/utils/enums/podcast_type.dart';

class BookCard extends StatelessWidget {
  final String imageName;
  final String label;
  final PodcastType podcastType;
  const BookCard({
    super.key,
    required this.imageName,
    required this.label,
    required this.podcastType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: SizedBox(
        height: 280,
        width: 160,
        child: Column(
          spacing: 8,
          children: [
            Container(
              height: 240,
              width: 157,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  width: 2,
                  color: AppColors.borderColor,
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/$imageName.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (podcastType == PodcastType.audio)
                  AppIcons.audio
                else if (podcastType == PodcastType.reading)
                  AppIcons.reading,
                Expanded(
                  child: Text(
                    label,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          overflow: TextOverflow.ellipsis,
                        ),
                    maxLines: 1,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
