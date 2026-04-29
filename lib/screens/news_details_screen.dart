import 'package:flutter/material.dart';
import 'package:flutter_training/models/news_article_model.dart';

class NewsDetailsScreen extends StatelessWidget {
  final NewsArticleModel newsArticle;
  const NewsDetailsScreen({super.key, required this.newsArticle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(newsArticle.title, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey.shade800,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(color: Colors.grey.shade800),
        child: Column(
          children: [
            Image.network(
              newsArticle.urlToImage,
              errorBuilder: (_, __, ___) =>
                  const Icon(Icons.image_not_supported),
            ),
            SizedBox(height: 16),
            Text(
              newsArticle.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              newsArticle.description,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
