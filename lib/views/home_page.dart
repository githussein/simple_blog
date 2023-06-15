import 'package:coding_challenge_m_hussein/models/article.dart';
import 'package:coding_challenge_m_hussein/services/blog_service.dart';
import 'package:coding_challenge_m_hussein/views/widgets/article_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: StreamBuilder<List<Article>>(
            stream: BlogService.readArticles(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final articles = snapshot.data;
                return ListView(
                  children: articles!
                      .map((article) => ArticleCard(article: article))
                      .toList(),
                );
              } else if (snapshot.hasError) {
                return const Center(child: Text('Error reading articles'));
              } else {
                return const LinearProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}
