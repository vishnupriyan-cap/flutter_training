class NewsArticleModel {
  late String author;
  late String title;
  late String description;
  late String url;
  late String urlToImage;
  late String publishedAt;
  late String content;

  NewsArticleModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  NewsArticleModel.fromJson(Map<String, dynamic> json) {
    author = json['author'] ?? "Unknown Author";
    title = json['title'] ?? "No Title";
    description = json['description'] ?? "No Description";
    url = json['url'] ?? "No URL";
    urlToImage = json['urlToImage'] ?? "No Image URL";
    publishedAt = json['publishedAt'] ?? "No Publish Date";
    content = json['content'] ?? "No Content";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['author'] = this.author;
    data['title'] = this.title;
    data['description'] = this.description;
    data['url'] = this.url;
    data['urlToImage'] = this.urlToImage;
    data['publishedAt'] = this.publishedAt;
    data['content'] = this.content;
    return data;
  }
}

class Source {
  late String id;
  late String name;

  Source({required this.id, required this.name});

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? "";
    name = json['name'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
