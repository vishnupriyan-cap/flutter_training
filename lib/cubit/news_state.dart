part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}

final class NewsLoading extends NewsState {}

final class NewsLoaded extends NewsState {
  final List<NewsArticleModel> newsArticles;

  NewsLoaded(this.newsArticles);
}

final class NewsError extends NewsState {
  final String errorMessage;

  NewsError(this.errorMessage);
}
