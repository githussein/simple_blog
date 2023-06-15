import 'package:flutter/material.dart';
import 'package:coding_challenge_m_hussein/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Simple Blog',
      home: HomePage(title: 'Simple Blog'),
    );
  }
}
