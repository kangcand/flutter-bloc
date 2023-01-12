import '../models/article_model.dart';
import '../resources/article_provider.dart';

class ArticleRepository {
  final _provider = ArticleProvider();

  Future<ArticleModel> fetchArticleList() {
    return _provider.fetchArticleList();
  }
}

class NetworkError extends Error {}
