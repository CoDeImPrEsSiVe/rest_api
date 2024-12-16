// lib/widgets/category_details_screen.dart

import 'package:flutter/material.dart';

class CategoryDetailsScreen extends StatelessWidget {
  final String categoryName;

  const CategoryDetailsScreen({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: Center(
        child: Text(
          'Details of $categoryName',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
