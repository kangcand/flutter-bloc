part of 'article_bloc.dart';

abstract class ArticleState extends Equatable {
  const ArticleState();

  @override
  List<Object> get props => [];
}

class ArticleInitial extends ArticleState {}

class ArticleLoading extends ArticleState {}

class ArticleLoaded extends ArticleState {
  final ArticleModel articleModel;
  const ArticleLoaded(this.articleModel);
}

class ArticleError extends ArticleState {
  final String? message;
  const ArticleError(this.message);
}
