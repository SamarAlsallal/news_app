
class ArticleModel {
  final String? img;
  final String title;
  final String? subtitle;
  final String? url;

  ArticleModel({
    required this.img,
    required this.title,
    required this.subtitle,
    this.url
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      img: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
      url:json['url']
    );
  }
}
