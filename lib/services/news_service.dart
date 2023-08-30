import 'package:dio/dio.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    var response = await dio.get(
        '$baseUrl?country=$country&prioritydomain=$priorityDomain&apikey=$apiKey&category=$category');

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['results'];

    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel.fromJson(article);
      articlesList.add(articleModel);
    }

    return articlesList;
  }
}
