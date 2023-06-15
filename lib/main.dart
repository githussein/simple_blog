import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:coding_challenge_m_hussein/views/home_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Blog',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFF2F2F2)),
      home: const HomePage(title: 'Simple Blog'),
    );
  }
}
