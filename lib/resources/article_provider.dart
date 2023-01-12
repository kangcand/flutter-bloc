import 'package:dio/dio.dart';

import '../models/article_model.dart';

class ArticleProvider {
  final Dio _dio = Dio();
  final String _url = 'http://03f3-180-244-128-248.ngrok.io/api/v1/article';

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
