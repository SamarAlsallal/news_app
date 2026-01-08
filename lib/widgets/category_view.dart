import 'package:flutter/material.dart';

import 'package:news_app/Models/category_model.dart';
import 'package:news_app/widgets/Category_card.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(text: 'Entertainment', img: 'assets/entertiment.jpg'),
    CategoryModel(text: 'Health', img: 'assets/health.jpg'),
    CategoryModel(text: 'Science', img: 'assets/sicence.jpg'),
    CategoryModel(text: 'Business', img: 'assets/bussniess.jpg'),
    CategoryModel(text: 'Sports', img: 'assets/sport.jpg'),
    CategoryModel(text: 'Technology', img: 'assets/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(item: categories[index]);
        },
      ),
    );
  }
}
