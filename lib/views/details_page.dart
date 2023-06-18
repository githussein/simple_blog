import 'package:coding_challenge_m_hussein/models/article.dart';
import 'package:coding_challenge_m_hussein/services/blog_service.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key, required this.article}) : super(key: key);

  final Article article;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    _textEditingController.text = widget.article.content;
    super.initState();
  }

  updateArticle() async =>
      BlogService.updateArticle(widget.article.id, _textEditingController.text);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      widget.article.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 32,
                          letterSpacing: -0.03,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: TextField(
                      controller: _textEditingController,
                      maxLines: 40,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (_) => updateArticle(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
