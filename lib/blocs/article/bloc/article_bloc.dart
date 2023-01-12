import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../models/article_model.dart';
import '../../../repositories/article_repositories.dart';

part 'article_event.dart';
part 'article_state.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleBloc() : super(ArticleInitial()) {
    final ArticleRepository _articleRepository = ArticleRepository();

    on<GetArticleList>((event, emit) async {
      try {
        emit(ArticleLoading());
        final mList = await _articleRepository.fetchArticleList();
        emit(ArticleLoaded(mList));
        if (mList.error != null) {
          emit(ArticleError(mList.error));
        }
      } on NetworkError {
        emit(ArticleError("Failed to fetch data. is your device online?"));
      }
    });
  }
}
