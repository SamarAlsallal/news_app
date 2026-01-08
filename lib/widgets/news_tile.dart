import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/widgets/Articles_view.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.articlemodel});
  final ArticleModel articlemodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (articlemodel.url != null && articlemodel.url!.isNotEmpty) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArticlesView(url: articlemodel.url!),
            ),
          );
        }
      },

      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: articlemodel.img!,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Image.asset('news.jpg'),
            ),
      
            Text(
              articlemodel.title,
              style: TextStyle(
                fontSize: 22,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              articlemodel.subtitle ?? '',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
