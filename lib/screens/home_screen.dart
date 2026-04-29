import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_training/models/news_article_model.dart';
import 'package:flutter_training/utils/const.dart';
import 'package:http/http.dart' as http;

// Service Layer(Http call, local datbase access) / Data Layer
// Business Logic Layer/View Model -> Repositories (News repositor), Use Cases, etc.
// UI Layer

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<List<NewsArticleModel>?> getTopNewsHealines() async {
    final uri = Uri.parse(newsApiTopHeadlinesUrl);
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
      return newsArticles;
    } else {
      print("Error: ${response.statusCode}");
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsArticleModel>?>(
      future: getTopNewsHealines(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      "${snapshot.data?[index].title}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${snapshot.data?[index].description}",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              );
            },
          );
        }
        // print(snapshot);
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
