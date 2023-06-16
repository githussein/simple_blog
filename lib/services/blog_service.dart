import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coding_challenge_m_hussein/models/article.dart';

class BlogService {
  static Stream<List<Article>> readArticles() {
    return FirebaseFirestore.instance.collection('blog').snapshots().map(
        (snapshot) => snapshot.docs
            .map((doc) => Article.fromJson(doc.data(), doc.id))
            .toList());
  }

  static updateArticle(String id, String newContent) {
    final articleDoc = FirebaseFirestore.instance.collection('blog').doc(id);
    articleDoc.update({
      'content': newContent,
    });
  }
}
