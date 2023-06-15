import 'package:cloud_firestore/cloud_firestore.dart';

class BlogService {
  getArticles() async {
    return await FirebaseFirestore.instance.collection('blog').get();
  }
}
