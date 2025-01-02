import 'package:flutter/material.dart';
import 'package:wizdom_app/components/categories_card.dart';
import 'package:wizdom_app/components/section_heading.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    final json = [
      {
        "label": "Motivation & Inspiration",
        "icon": "motivation",
      },
      {
        "label": "Productivity & Time Management",
        "icon": "productivity",
      },
      {
        "label": "Health & Fitness",
        "icon": "motivation",
      },
      {
        "label": "Sex & Relationships",
        "icon": "motivation",
      },
      {
        "label": "Family & Parenting",
        "icon": "motivation",
      },
      {
        "label": "Psychology/Personalities",
        "icon": "motivation",
      },
      {
        "label": "Mental Well-being",
        "icon": "motivation",
      },
      {
        "label": "Entrepreneurship & Business",
        "icon": "motivation",
      },
      {
        "label": "Self Growth",
        "icon": "motivation",
      },
      {
        "label": "Mindfulness & Happiness",
        "icon": "motivation",
      },
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        SectionHeading(heading: 'Categories you\'re interested in'),
        SizedBox(
          height: 60,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CategoryCard(
              icon: json[index]['icon'] ?? '',
              label: json[index]['label'] ?? '',
            ),
            itemCount: json.length,
          ),
        ),
      ],
    );
  }
}
