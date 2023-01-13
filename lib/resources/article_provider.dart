import 'package:dio/dio.dart';

import '../models/article_model.dart';
import '../utils/base_url.dart';

class ArticleProvider {
  final Dio _dio = Dio();
  final String _url = '${ApiUrl.baseApi}/article'; //link dynamic ngrok

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

class ArticleDetailProvider {
  final Dio _dio = Dio();
  final String _url = '${ApiUrl.baseApi}/article/{id}'; //link dynamic ngrok

  Future<ArticleModel> fetchDetailArticleList() async {
    try {
      Response response = await _dio.get(_url);
      return ArticleModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return ArticleModel.withError("Data not found / Connection issue");
    }
  }
}
