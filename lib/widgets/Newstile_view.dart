
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';


class NewstileView extends StatelessWidget {
  final List<ArticleModel> article;

  NewstileView({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
     

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Newstile(articlemodel: article[index]);
        },
        childCount: article.length,
      ),
    );
  }
}
