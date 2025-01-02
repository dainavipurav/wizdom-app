import 'package:flutter/material.dart';
import 'package:wizdom_app/screens/home/books_list.dart';
import 'package:wizdom_app/screens/home/categories_list.dart';
import 'package:wizdom_app/screens/home/stories_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final personalBooks = [
      {"label": "Marvin McKinney", "image": "book1", "podcast_type": "audio"},
      {"label": "Marvin McKinney", "image": "book2", "podcast_type": "reading"},
      {"label": "Marvin McKinney", "image": "book3", "podcast_type": "audio"},
      {"label": "Marvin McKinney", "image": "book1", "podcast_type": "audio"},
      {"label": "Marvin McKinney", "image": "book2", "podcast_type": "reading"},
      {"label": "Marvin McKinney", "image": "book3", "podcast_type": "audio"},
      {"label": "Marvin McKinney", "image": "book1", "podcast_type": "audio"},
      {"label": "Marvin McKinney", "image": "book2", "podcast_type": "reading"},
      {"label": "Marvin McKinney", "image": "book3", "podcast_type": "audio"},
      {"label": "Marvin McKinney", "image": "book1", "podcast_type": "audio"},
      {"label": "Marvin McKinney", "image": "book2", "podcast_type": "reading"},
      {"label": "Marvin McKinney", "image": "book3", "podcast_type": "audio"},
    ];

    final familyBooks = [
      {"label": "Marvin McKinney", "image": "book4", "podcast_type": "audio"},
      {"label": "Marvin McKinney", "image": "book5", "podcast_type": "reading"},
      {"label": "Marvin McKinney", "image": "book6", "podcast_type": "audio"},
      {"label": "Marvin McKinney", "image": "book4", "podcast_type": "audio"},
      {"label": "Marvin McKinney", "image": "book5", "podcast_type": "reading"},
      {"label": "Marvin McKinney", "image": "book6", "podcast_type": "audio"},
      {"label": "Marvin McKinney", "image": "book4", "podcast_type": "audio"},
      {"label": "Marvin McKinney", "image": "book5", "podcast_type": "reading"},
      {"label": "Marvin McKinney", "image": "book6", "podcast_type": "audio"},
      {"label": "Marvin McKinney", "image": "book4", "podcast_type": "audio"},
      {"label": "Marvin McKinney", "image": "book5", "podcast_type": "reading"},
      {"label": "Marvin McKinney", "image": "book6", "podcast_type": "audio"},
    ];
    return ListView(
      physics: AlwaysScrollableScrollPhysics(),
      children: [
        SizedBox(height: 12),
        CategoriesList(),
        SizedBox(height: 26),
        BooksList(
          title: 'Personalised Books',
          subtitle: 'As per your preference',
          json: personalBooks,
        ),
        StoriesList(),
        SizedBox(height: 26),
        BooksList(
          title: 'To build strong family',
          subtitle: 'Top-rated summaries for this goal',
          json: familyBooks,
        ),
      ],
    );
  }
}
