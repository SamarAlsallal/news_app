import 'package:flutter/material.dart';

import 'package:news_app/Models/category_model.dart';
import 'package:news_app/widgets/news_view_builder.dart';

class CategoryNewsview extends StatelessWidget {
  const CategoryNewsview({super.key , required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CustomScrollView(
        slivers: [
          Newsviewbuilder(categoryName: category.text,),
        ],
      ),
    );
  }
}