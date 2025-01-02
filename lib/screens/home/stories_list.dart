import 'package:flutter/material.dart';
import 'package:wizdom_app/components/section_heading.dart';
import 'package:wizdom_app/components/story_card.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    final json = [
      {
        "label": "Motivation & Inspiration",
        "image": "story1",
      },
      {
        "label": "Productivity & Time Management",
        "image": "story2",
      },
      {
        "label": "Health & Fitness",
        "image": "story3",
      },
      {
        "label": "Sex & Relationships",
        "image": "story4",
      },
      {
        "label": "Family & Parenting",
        "image": "story5",
      },
      {
        "label": "Motivation & Inspiration",
        "image": "story1",
      },
      {
        "label": "Productivity & Time Management",
        "image": "story2",
      },
      {
        "label": "Health & Fitness",
        "image": "story3",
      },
      {
        "label": "Sex & Relationships",
        "image": "story4",
      },
      {
        "label": "Family & Parenting",
        "image": "story5",
      },
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        SectionHeading(heading: 'Learn through Stories'),
        SizedBox(
          height: 96,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => StoryCard(
              imageName: json[index]['image'] ?? '',
              label: json[index]['label'] ?? '',
            ),
            itemCount: json.length,
          ),
        ),
      ],
    );
  }
}
