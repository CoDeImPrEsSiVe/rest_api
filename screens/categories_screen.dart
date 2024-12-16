import 'package:flutter/material.dart';
import 'package:rest_api/models/catagories_model.dart';
import 'package:rest_api/widgets/category_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Example list of categories, replace with actual data or API data.
    List<CategoriesModel> categories = [
      CategoriesModel(
          id: 1, name: 'Sports', image: 'https://example.com/sports.png'),
      CategoriesModel(
          id: 2, name: 'Technology', image: 'https://example.com/tech.png'),
      CategoriesModel(
          id: 3, name: 'Food', image: 'https://example.com/food.png'),
      CategoriesModel(
          id: 3, name: 'HouseHold Items', image: 'https://example.com/'),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Categories',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            )),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount:
            categories.length, // Use categories.length for the number of items
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 1.2,
        ),
        itemBuilder: (ctx, index) {
          // Pass the category data to the CategoryWidget
          return CategoryWidget(category: categories[index]);
        },
      ),
    );
  }
}
