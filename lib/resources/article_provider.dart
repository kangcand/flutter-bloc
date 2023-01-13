import 'package:dio/dio.dart';

import '../models/article_model.dart';

class ArticleProvider {
  final Dio _dio = Dio();
  final String _url = 'http://127.0.0.1:8000/api/v1/article';

  Future<ArticleModel> fetchArticleList() async {
    try {
      Response response = await _dio.get(_url);
      return ArticleModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return ArticleModel.withError("Data not found / Connection issue");
    }
  }
}
