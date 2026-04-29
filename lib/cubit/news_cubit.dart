import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_training/models/news_article_model.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../utils/const.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  Future<List<NewsArticleModel>?> getTopNewsHealines() async {
    emit(NewsLoading());
    try {
      final uri = Uri.parse("newsApiTopHeadlinesUrl");
      final response = await http.get(
        uri,
        headers: {
          "Authorization": "Bearer $newsApiToken",
          "Content-Type": "application/json",
        },
      );
      if (response.statusCode == 200) {
        print(response.body); //raw json string
        final responseBody = jsonDecode(response.body);
        late final List<NewsArticleModel> newsArticles;
        List articles = responseBody["articles"];
        newsArticles = articles
            .map((article) => NewsArticleModel.fromJson(article))
            .toList();
        emit(NewsLoaded(newsArticles));
      } else {
        print("Error: ${response.statusCode}");
        emit(NewsError("Error: ${response.statusCode}"));
      }
    } catch (e) {
      print("Exception: $e");
      emit(NewsError("Exception: $e"));
    }
  }
}
