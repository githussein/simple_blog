import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coding_challenge_m_hussein/models/article.dart';

class BlogService {
  static Stream<List<Article>> readArticles() => FirebaseFirestore.instance
      .collection('blog')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => Article.fromJson(doc.data())).toList());
}
