import 'package:flutter/material.dart';
import 'articles.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      // useMaterial3: true,
      home: ArticlesScreen(),
    );
  }
}


