class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String url;
  final String source;

  ArticleModel({
    required this.url,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.source,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json['image_url'],
        title: json['title'],
        subTitle: json['description'],
        url: json['link'],
        source: json['source_id']);
  }
}
