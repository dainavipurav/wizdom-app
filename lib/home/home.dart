import 'package:flutter/material.dart';
import 'package:wizdom_app/components/appbar_list_item.dart';
import 'package:wizdom_app/home/books_list.dart';
import 'package:wizdom_app/home/categories_list.dart';
import 'package:wizdom_app/home/stories_list.dart';
import 'package:wizdom_app/utils/enums/appbar_action.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final json = [
      {
        "value": "13",
        "action": "stories",
      },
      {
        "value": "2",
        "action": "streak",
      },
      {
        "value": "711",
        "action": "coins",
      },
      {
        "action": "gift",
      },
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: json
              .where((e) =>
                  e['action'] != null &&
                  AppbarAction.values
                      .map((action) => action.name)
                      .contains(e['action']))
              .map(
            (e) {
              return Flexible(
                flex: 1,
                child: AppbarListItem(
                  action: AppbarAction.values.byName(e['action'] ?? 'coins'),
                  value: e['value'],
                ),
              );
            },
          ).toList(),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          SizedBox(height: 12),
          CategoriesList(),
          SizedBox(height: 26),
          BooksList(
            title: 'Personalised Books',
            subtitle: 'As per your preference',
            json: [
              {
                "label": "Marvin McKinney",
                "image": "book1",
                "podcast_type": "audio"
              },
              {
                "label": "Marvin McKinney",
                "image": "book2",
                "podcast_type": "reading"
              },
              {
                "label": "Marvin McKinney",
                "image": "book3",
                "podcast_type": "audio"
              },
              {
                "label": "Marvin McKinney",
                "image": "book1",
                "podcast_type": "audio"
              },
              {
                "label": "Marvin McKinney",
                "image": "book2",
                "podcast_type": "reading"
              },
              {
                "label": "Marvin McKinney",
                "image": "book3",
                "podcast_type": "audio"
              },
              {
                "label": "Marvin McKinney",
                "image": "book1",
                "podcast_type": "audio"
              },
              {
                "label": "Marvin McKinney",
                "image": "book2",
                "podcast_type": "reading"
              },
              {
                "label": "Marvin McKinney",
                "image": "book3",
                "podcast_type": "audio"
              },
              {
                "label": "Marvin McKinney",
                "image": "book1",
                "podcast_type": "audio"
              },
              {
                "label": "Marvin McKinney",
                "image": "book2",
                "podcast_type": "reading"
              },
              {
                "label": "Marvin McKinney",
                "image": "book3",
                "podcast_type": "audio"
              },
            ],
          ),
          StoriesList(),
          SizedBox(height: 26),
          BooksList(
            title: 'To build strong family',
            subtitle: 'Top-rated summaries for this goal',
            json: [
              {
                "label": "Marvin McKinney",
                "image": "book4",
                "podcast_type": "audio"
              },
              {
                "label": "Marvin McKinney",
                "image": "book5",
                "podcast_type": "reading"
              },
              {
                "label": "Marvin McKinney",
                "image": "book6",
                "podcast_type": "audio"
              },
              {
                "label": "Marvin McKinney",
                "image": "book4",
                "podcast_type": "audio"
              },
              {
                "label": "Marvin McKinney",
                "image": "book5",
                "podcast_type": "reading"
              },
              {
                "label": "Marvin McKinney",
                "image": "book6",
                "podcast_type": "audio"
              },
              {
                "label": "Marvin McKinney",
                "image": "book4",
                "podcast_type": "audio"
              },
              {
                "label": "Marvin McKinney",
                "image": "book5",
                "podcast_type": "reading"
              },
              {
                "label": "Marvin McKinney",
                "image": "book6",
                "podcast_type": "audio"
              },
              {
                "label": "Marvin McKinney",
                "image": "book4",
                "podcast_type": "audio"
              },
              {
                "label": "Marvin McKinney",
                "image": "book5",
                "podcast_type": "reading"
              },
              {
                "label": "Marvin McKinney",
                "image": "book6",
                "podcast_type": "audio"
              },
            ],
          ),
        ],
      ),
    );
  }
}
