class Article {
  String id;
  final String title;
  final String content;

  Article({
    this.id = '',
    required this.title,
    required this.content,
  });

  static Article fromJson(Map<String, dynamic> json) => Article(
        id: json['ido'] ?? '',
        title: json['title'],
        content: json['content'],
      );
}
