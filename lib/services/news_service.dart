import 'package:dio/dio.dart';

import 'package:news_app/Models/article_model.dart';

class NewsService 
{
  final dio = Dio ();

Future<List<ArticleModel>> getNews( String category) async
{
  
   Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=58149c4ed3184b5480e3ae7dd35410f3&category=$category');

   Map<String, dynamic> JsonData = response.data;
   List<dynamic> articles = JsonData['articles'];

  List<ArticleModel>articleList=[];

  for(var article in articles)
  {
    ArticleModel Articlemodel= ArticleModel.fromJson(article);
    articleList.add(Articlemodel);
  }
    return articleList;
}

}
