class Article {
  String id;
  final String title;
  final String content;

  Article({
    this.id = '',
    required this.title,
    required this.content,
  });

  static Article fromJson(Map<String, dynamic> json, String id) => Article(
        id: id,
        title: json['title'],
        content: json['content'],
      );
}
