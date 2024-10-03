import 'package:flutter/material.dart';
import 'package:newsmahmoud/model.dart'; // Import your model that contains Articles

class ArticleDetailScreen extends StatelessWidget {
  final Articles article; // Declare article as a class field

  const ArticleDetailScreen({Key? key, required this.article}) : super(key: key); // Initialize article in the constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(article.title ?? "Article Details"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the article image
            if (article.urlToImage != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  article.urlToImage!,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.image_not_supported,
                      size: 50,
                      color: Colors.grey,
                    );
                  },
                ),
              ),
            const SizedBox(height: 20),

            // Display the article title
            Text(
              article.title ?? "Title not available",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),

            // Display the article description
            Text(
              article.description ?? "Description not available",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),

            // Display the article content
            Text(
              article.content ?? "Content not available",
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
