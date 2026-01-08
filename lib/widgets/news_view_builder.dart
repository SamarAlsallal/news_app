import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';

import 'package:news_app/services/News_Service.dart';
import 'package:news_app/widgets/Newstile_view.dart';

class Newsviewbuilder extends StatefulWidget {
 Newsviewbuilder({super.key , required this.categoryName});
 final String categoryName;
  @override
  State<Newsviewbuilder> createState() => _NewsviewbuilderState();
}

class _NewsviewbuilderState extends State<Newsviewbuilder> {
  var future;
  
  @override
  void initState() {
    super.initState();
    future= NewsService().getNews(widget.categoryName);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
         if (snapshot.hasData) {
          return NewstileView(article: snapshot.data!);
        } 
        else if (snapshot.hasError) {
          return SliverToBoxAdapter(child: Text('Erorr'));
        } 
        else {
          return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
