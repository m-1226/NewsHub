class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String url;

  ArticleModel(
      {required this.url,
      required this.image,
      required this.title,
      required this.subTitle});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      url: json['link'],
      image: json['image_url'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}
