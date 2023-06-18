import 'package:coding_challenge_m_hussein/models/article.dart';
import 'package:coding_challenge_m_hussein/views/details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({Key? key, required this.article}) : super(key: key);
  final Article article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => DetailsPage(article: article),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.title,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Graphik',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    article.content,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Graphik',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/thumbnail.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ), // Placeholder color for photo
              margin: const EdgeInsets.all(8),
            ),
          ],
        ),
      ),
    );
  }
}
