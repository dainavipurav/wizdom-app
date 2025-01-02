import 'package:flutter/material.dart';
import 'package:wizdom_app/components/book_card.dart';
import 'package:wizdom_app/components/section_heading.dart';
import 'package:wizdom_app/components/section_sub_heading.dart';
import 'package:wizdom_app/utils/enums/podcast_type.dart';

class BooksList extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<Map<String, dynamic>> json;
  const BooksList({
    super.key,
    required this.json,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Wrap(
          direction: Axis.vertical,
          children: [
            SectionHeading(heading: title),
            SectionSubHeading(heading: subtitle),
          ],
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => BookCard(
              imageName: json[index]['image'] ?? '',
              label: json[index]['label'] ?? '',
              podcastType: json[index]['podcast_type'] != null &&
                      PodcastType.values
                          .map((type) => type.name)
                          .contains(json[index]['podcast_type'])
                  ? PodcastType.values.byName(json[index]['podcast_type']!)
                  : PodcastType.audio,
            ),
            itemCount: json.length,
          ),
        ),
      ],
    );
  }
}
